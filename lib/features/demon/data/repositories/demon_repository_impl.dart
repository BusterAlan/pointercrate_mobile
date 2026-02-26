import "../../business/repositories/demon_repository.dart";

import "../data_sources/remote/demon_remote_data_source.dart";

/// Data operations for the Demon collection
class DemonRepositoryImpl implements DemonRepository {
  /// Data operations for the Demon collection
  DemonRepositoryImpl({
    required this.remoteDataSource,  
  });
  
  /// Demon remote data source value
  final DemonRemoteDataSource remoteDataSource;  
}
