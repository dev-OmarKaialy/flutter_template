// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'update_cubit.dart';

enum UpdateStatus { init, checking, needUpdate, success }

class UpdateState {
  final RequestStatus updateStatus;
  final UpdateStatus checkVersionStatus;
  final double progress;
  UpdateState({
    this.updateStatus = RequestStatus.init,
    this.checkVersionStatus = UpdateStatus.init,
    this.progress = 0,
  });

  UpdateState copyWith({
    RequestStatus? updateStatus,
    UpdateStatus? checkVersionStatus,
    double? progress,
  }) {
    return UpdateState(
      updateStatus: updateStatus ?? this.updateStatus,
      checkVersionStatus: checkVersionStatus ?? this.checkVersionStatus,
      progress: progress ?? this.progress,
    );
  }
}
