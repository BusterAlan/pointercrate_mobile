import "../../business/repositories/record_repository.dart";

import "../data_sources/remote/record_remote_data_source.dart";

/// Data operations for the Record collection
class RecordRepositoryImpl implements RecordRepository {
  /// Data operations for the Record collection
  RecordRepositoryImpl({
    required this.remoteDataSource,    
  });
  
  /// Record remote data source value
  final RecordRemoteDataSource remoteDataSource;
}
