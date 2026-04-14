// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:android_package_installer/android_package_installer.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../core/unified_api/api_variables.dart';
import '../../../../../core/utils/request_status.dart';
import '../../../../../core/utils/toaster.dart';
import '../../../services/update_service.dart';

part 'update_state.dart';

@lazySingleton
class UpdateCubit extends Cubit<UpdateState> {
  final UpdateService updateService;
  UpdateCubit(this.updateService) : super(UpdateState());

  Future<void> downloadApp() async {
    try {
      final url = ApiVariables().getAppFile();
      final token = await const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
      ).read(key: 'token');

      if (token == null) {
        Toaster.showToast("يجب تسجيل الدخول أولاً");
        return;
      }

      emit(state.copyWith(updateStatus: RequestStatus.loading));

      final request = http.Request('POST', url);
      //TODO! add the app name here
      request.body = jsonEncode({"type": ""});
      request.headers.addAll({"Content-Type": "application/json", "ACCEPT": "*/*"});
      final response = await http.Client().send(request);
      final dir = await getDownloadsDirectory();
      if (dir == null) {
        Toaster.showToast("حدث خطأ أثناء تحميل التحديث");
        return;
      }
    //TODO! add the app name here
      final file = File('${dir.path}/apk-attendance-system.apk');
      final sink = file.openWrite();
      final contentLength = response.contentLength ?? 0;
      int bytesReceived = 0;

      response.stream.listen(
        (chunk) {
          sink.add(chunk);
          bytesReceived += chunk.length;
          emit(state.copyWith(progress: contentLength > 0 ? bytesReceived / contentLength : 0.0));
        },
        onDone: () async {
          await sink.close();
          emit(state.copyWith(updateStatus: RequestStatus.success));
          await _installApk(file.path);
        },
        onError: (e) async {
          await sink.close();
          emit(state.copyWith(updateStatus: RequestStatus.failed));
          Toaster.showToast("خطأ: ${e.toString()}");
          emit(state.copyWith(updateStatus: RequestStatus.init));
        },
        cancelOnError: true,
      );
    } catch (e) {
      emit(state.copyWith(updateStatus: RequestStatus.init));
      Toaster.showToast("خطأ: ${e.toString()}");
    }
  }

  Future<void> _installApk(String filePath) async {
    try {
      await AndroidPackageInstaller.installApk(apkFilePath: filePath);
      SystemNavigator.pop(animated: true);
    } catch (e) {
      Toaster.showToast("فشل التثبيت: ${e.toString()}");
    }
  }

  Future<void> checkVersion() async {
    emit(state.copyWith(checkVersionStatus: UpdateStatus.checking));
    final result = await updateService.getAppVersion();
    await result.fold(
      (left) {
        emit(state.copyWith(checkVersionStatus: UpdateStatus.success));
      },
      (right) async {
        if ((await PackageInfo.fromPlatform()).buildNumber == '$right') {
          await _deleteDownloadedApk();
          emit(state.copyWith(checkVersionStatus: UpdateStatus.success));
        } else {
          emit(state.copyWith(checkVersionStatus: UpdateStatus.needUpdate));
        }
      },
    );
  }

  Future<void> _deleteDownloadedApk() async {
    final dir = await getDownloadsDirectory();
    if (dir == null) return;
    //TODO! add the app name here
    final file = File('${dir.path}/');
    if (await file.exists()) {
      await FirebaseAnalytics.instance.logEvent(
        name: 'App Updated to ${(await PackageInfo.fromPlatform()).version}',
      );
      await file.delete();
    }
  }
}
