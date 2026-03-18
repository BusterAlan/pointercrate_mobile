import "package:flutter/material.dart";
import "package:get_it/get_it.dart";

import "../../features/demon/business/repositories/demon_repository.dart";
import "../../features/demon/business/use_cases/get_demons.dart";
import "../../features/demon/data/data_sources/remote/demon_remote_data_mock.dart";
import "../../features/demon/data/repositories/demon_repository_impl.dart";
import "../../features/demon/presentation/blocs/bloc.dart";

/// Class to inject the dependencies in the application
class PointercrateDependencyInjection {
  /// Inject the services in the application
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      _registerDataSources(),
      _registerMockRepositories(),
      _registerUseCases(),
      _registerBlocs(),
    ]);
  }

  static Future<void> _registerMockRepositories() async {
    GetIt.I.registerLazySingleton<DemonRepository>(
      () => DemonRepositoryImpl(
        remoteDataSource: GetIt.I<DemonRemoteDataMock>(),
      ),
    );
  }

  static Future<void> _registerDataSources() async {
    const int errorPercentage = 10;
    const int maxWaitTime = 1000;

    GetIt.I.registerLazySingleton<DemonRemoteDataMock>(
      () => DemonRemoteDataMock(
        errorPercentage: errorPercentage,
        maxWaitTime: maxWaitTime,
      ),
    );
  }

  static Future<void> _registerUseCases() async {
    GetIt.I.registerLazySingleton<GetDemons>(
      () => GetDemons(
        demonRepository: GetIt.I<DemonRepository>(),
      ),
    );
  }

  static Future<void> _registerBlocs() async {
    GetIt.I.registerFactory<DemonBloc>(
      () => DemonBloc(
        getDemons: GetIt.I<GetDemons>(),
      ),
    );
  }
}
