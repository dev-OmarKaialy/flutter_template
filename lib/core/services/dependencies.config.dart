// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/asmaa_allah/data/datasources/asmaa_allah_remote_datasource.dart'
    as _i1027;
import '../../features/asmaa_allah/data/repositories/asmaa_allah_repository_impl.dart'
    as _i632;
import '../../features/asmaa_allah/domain/repositories/asmaa_allah_repository.dart'
    as _i232;
import '../../features/asmaa_allah/domain/usecases/get_asmaa_allah_usecase.dart'
    as _i248;
import '../../features/asmaa_allah/presentation/bloc/asmaa_bloc.dart' as _i241;
import '../../features/counter/data/datasources/counter_local_data_source.dart'
    as _i976;
import '../../features/counter/data/repositories/counter_repository_impl.dart'
    as _i770;
import '../../features/counter/domain/repositories/counter_repository.dart'
    as _i514;
import '../../features/counter/domain/usecases/decrement_counter.dart' as _i478;
import '../../features/counter/domain/usecases/get_counter.dart' as _i245;
import '../../features/counter/domain/usecases/increment_counter.dart' as _i931;
import '../../features/counter/presentation/bloc/counter_bloc.dart' as _i256;
import '../../features/update/presentation/cubit/update_cubit/update_cubit.dart'
    as _i121;
import '../../features/update/services/update_service.dart' as _i241;
import '../unified_api/dio/api_client.dart' as _i357;
import '../unified_api/dio/logger_interceptor.dart' as _i614;
import '../unified_api/dio/register_module.dart' as _i305;
import 'dependencies.dart' as _i372;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storageModule = _$StorageModule();
    final registerModule = _$RegisterModule();
    gh.factory<_i558.FlutterSecureStorage>(() => storageModule.secureStorage);
    gh.lazySingleton<_i614.LoggerInterceptor>(() => _i614.LoggerInterceptor());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i976.CounterLocalDataSource>(
      () => _i976.InMemoryCounterLocalDataSource(
        storage: gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.factory<_i514.CounterRepository>(
      () => _i770.CounterRepositoryImpl(
        localDataSource: gh<_i976.CounterLocalDataSource>(),
      ),
    );
    gh.factory<_i478.DecrementCounter>(
      () => _i478.DecrementCounter(gh<_i514.CounterRepository>()),
    );
    gh.factory<_i245.GetCounter>(
      () => _i245.GetCounter(gh<_i514.CounterRepository>()),
    );
    gh.factory<_i931.IncrementCounter>(
      () => _i931.IncrementCounter(gh<_i514.CounterRepository>()),
    );
    gh.factory<_i357.ApiClient>(
      () => _i357.ApiClient(
        gh<_i361.Dio>(),
        loggingInterceptor: gh<_i614.LoggerInterceptor>(),
        storage: gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i241.UpdateService>(
      () => _i241.UpdateService(apiClient: gh<_i357.ApiClient>()),
    );
    gh.factory<_i1027.RemoteAsmaaDatasource>(
      () => _i1027.RemoteAsmaaDataSourceImpl(dio: gh<_i357.ApiClient>()),
    );
    gh.lazySingleton<_i256.CounterBloc>(
      () => _i256.CounterBloc(
        getCounter: gh<_i245.GetCounter>(),
        incrementCounter: gh<_i931.IncrementCounter>(),
        decrementCounter: gh<_i478.DecrementCounter>(),
      ),
    );
    gh.lazySingleton<_i121.UpdateCubit>(
      () => _i121.UpdateCubit(gh<_i241.UpdateService>()),
    );
    gh.factory<_i232.AsmaaAllahRepository>(
      () => _i632.AsmaaAllahRepositoryImpl(
        remoteDataSource: gh<_i1027.RemoteAsmaaDatasource>(),
      ),
    );
    gh.factory<_i248.GetAsmaaAllahUsecase>(
      () => _i248.GetAsmaaAllahUsecase(repo: gh<_i232.AsmaaAllahRepository>()),
    );
    gh.lazySingleton<_i241.AsmaaBloc>(
      () => _i241.AsmaaBloc(gh<_i248.GetAsmaaAllahUsecase>()),
    );
    return this;
  }
}

class _$StorageModule extends _i372.StorageModule {}

class _$RegisterModule extends _i305.RegisterModule {}
