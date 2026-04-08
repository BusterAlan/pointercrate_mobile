import "package:flutter/material.dart";
import "package:flutter_common_classes/flutter_common_classes.dart";
import "package:get_it/get_it.dart";

import "../../features/demon/business/repositories/demon_repository.dart";
import "../../features/demon/business/use_cases/get_demons.dart";
import "../../features/demon/data/data_sources/remote/demon_remote_data_mock.dart";
import "../../features/demon/data/data_sources/remote/demon_remote_data_source.dart";
import "../../features/demon/data/repositories/demon_repository_impl.dart";
import "../../features/demon/presentation/blocs/bloc.dart";
import "../adapters/dio_adapter.dart";
import "pointercrate_environment_config.dart";

/// Class to inject the dependencies in the application
class PointercrateDependencyInjection {
  /// Inject the services in the application
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      _registerDataSources(),
      _registerRepositories(),
      _registerUseCases(),
      _registerBlocs(),
    ]);
  }

  static Future<void> _registerRepositories() async {
    GetIt.I.registerLazySingleton<DemonRepository>(
      () => DemonRepositoryImpl(
        remoteDataSource: GetIt.I<DemonRemoteDataSource>(),
      ),
    );
  }

  static Future<void> _registerDataSources() async {
    final String baseApi =
        PointercrateEnvironmentConfig.prodVariables["base-api"] as String;

    if (baseApi.isNotEmpty) {
      await _registerRemoteDataSources(baseApi);
    } else {
      await _registerMockDataSources();
    }
  }

  static Future<void> _registerRemoteDataSources(String apiBase) async {
    GetIt.I.registerLazySingleton<DemonRemoteDataSource>(
      () => DemonRemoteDataSourceImpl(
        dio: DioAdapter(
          internetInfo: NetworkInfoImpl(InternetConnection()),
          baseUrl: "$apiBase/demons",
        ),
      ),
    );
  }

  static Future<void> _registerMockDataSources() async {
    const int errorPercentage = 10;
    const int maxWaitTime = 1000;

    final mock = DemonRemoteDataMock(
      errorPercentage: errorPercentage,
      maxWaitTime: maxWaitTime,
    );

    GetIt.I.registerLazySingleton<DemonRemoteDataSource>(() => mock);
    GetIt.I.registerLazySingleton<DemonRemoteDataMock>(() => mock);
  }

  static Future<void> _registerUseCases() async {
    GetIt.I.registerLazySingleton<GetDemons>(
      () => GetDemons(demonRepository: GetIt.I<DemonRepository>()),
    );
  }

  static Future<void> _registerBlocs() async {
    GetIt.I.registerFactory<DemonBloc>(
      () => DemonBloc(getDemons: GetIt.I<GetDemons>()),
    );
  }
}
