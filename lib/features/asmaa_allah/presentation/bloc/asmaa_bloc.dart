// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:template/core/usecase/usecase.dart';
import 'package:template/core/utils/request_status.dart';
import 'package:template/features/asmaa_allah/data/models/asmaa_allah_model.dart';
import 'package:template/features/asmaa_allah/domain/usecases/get_asmaa_allah_usecase.dart';

part 'asmaa_event.dart';
part 'asmaa_state.dart';

@lazySingleton
class AsmaaBloc extends Bloc<AsmaaEvent, AsmaaState> {
  final GetAsmaaAllahUsecase getAsmaaAllahUsecase;
  AsmaaBloc(this.getAsmaaAllahUsecase) : super(AsmaaState()) {
    on<GetAsmaaAllahEvent>((event, emit) async {
      emit(state.copyWith(getAsmaaAllahStatus: RequestStatus.loading));
      final result = await getAsmaaAllahUsecase(NoParams());
      result.fold(
        (left) {
          emit(state.copyWith(getAsmaaAllahStatus: RequestStatus.failed));
        },
        (right) {
          emit(
            state.copyWith(getAsmaaAllahStatus: RequestStatus.success, names: right.data?.names),
          );
        },
      );
    });
  }
}
