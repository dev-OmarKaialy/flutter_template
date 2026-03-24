import 'package:injectable/injectable.dart';
import 'package:template/core/unified_api/api_variables.dart';
import 'package:template/core/unified_api/dio/api_client.dart';
import 'package:template/core/unified_api/error/api_handeler_manager.dart';

import '../models/asmaa_allah_model.dart';

abstract class RemoteAsmaaDatasource {
  Future<AsmaaAllahModel> getAsmaaAllah();
}

@Injectable(as: RemoteAsmaaDatasource)
class RemoteAsmaaDataSourceImpl with HandlingApiManager implements RemoteAsmaaDatasource {
  final ApiClient dio;

  RemoteAsmaaDataSourceImpl({required this.dio});
  @override
  Future<AsmaaAllahModel> getAsmaaAllah() async {
    return wrapHandlingApi(
      tryCall: () async {
        return await dio.get(
          ApiVariables().getAsmaaAllahUri(
            params: {
              'language': 'ar',
              "api_key": 'hzyQ0ldNf96I8b0PafCvIKoSdScWbuXEWnQPKD2xR5nMkAkK',
            },
          ),
        );
      },
      jsonConvert: asmaaAllahModelFromJson,
    );
  }
}
