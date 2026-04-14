import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../../../core/unified_api/api_variables.dart';
import '../../../core/unified_api/handling_exception_manager.dart';
import '../../../core/unified_api/post_api.dart';

@lazySingleton
class UpdateService with HandlingExceptionManager {
  Future<Either<Failure, int>> getAppVersion() async {
    return wrapHandling(
      tryCall: () async {
        final getApi = PostApi(
          uri: ApiVariables().checkVersion(),
          //TODO! add the app name here
          body: {"type": ""},
          fromJson: (s) {
            return jsonDecode(s)['number_version'];
          },
        );
        return await getApi.callRequest();
      },
    );
  }
}
