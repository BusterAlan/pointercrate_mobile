import "package:flutter_common_classes/errors/failure.dart";
import "package:fpdart/fpdart.dart";

import "../../../../core/errors/error_handler.dart";
import "../../business/repositories/demon_repository.dart";

import "../data_sources/remote/demon_remote_data_source.dart";
import "../models/dtos/demon_model.dart";

/// Data operations for the Demon collection
class DemonRepositoryImpl implements DemonRepository {
  /// Data operations for the Demon collection
  DemonRepositoryImpl({
    required this.remoteDataSource,  
  });
  
  /// Demon remote data source value
  final DemonRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<DemonModel>>> getDemons() => ErrorHandler.handleApiCall(
    remoteDataSource.getDemons,
  );
}
