import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:template/core/unified_api/dio/api_client.dart';

import '../../../core/unified_api/api_variables.dart';
import '../../../core/unified_api/error/error_handeler.dart';
import '../../../core/unified_api/error/failure.dart';

@lazySingleton
class UpdateService with HandlingException {
  UpdateService({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<Either<Failure, int>> getAppVersion() async {
    return wrapHandling(
      tryCall: () async {
        final response = await _apiClient.post(
          ApiVariables().checkVersion(),
          data: {
            // TODO: add the app name here
            'type': '',
          },
        );
        final map = response.data is Map<String, dynamic>
            ? response.data as Map<String, dynamic>
            : jsonDecode(jsonEncode(response.data)) as Map<String, dynamic>;

        return int.tryParse('${map['number_version']}') ?? 0;
      },
    );
  }
}
