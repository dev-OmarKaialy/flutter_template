// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'asmaa_bloc.dart';

class AsmaaState {
  final RequestStatus getAsmaaAllahStatus;
  final List<NameModel> names;

  AsmaaState({this.getAsmaaAllahStatus = RequestStatus.init, this.names = const []});

  AsmaaState copyWith({RequestStatus? getAsmaaAllahStatus, List<NameModel>? names}) {
    return AsmaaState(
      getAsmaaAllahStatus: getAsmaaAllahStatus ?? this.getAsmaaAllahStatus,
      names: names ?? this.names,
    );
  }
}
