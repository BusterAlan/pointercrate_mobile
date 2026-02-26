import "../../business/repositories/auth_repository.dart";
import "../data_sources/remote/auth_remote_data_source.dart";

/// Data operations for the Auth collection
class AuthRepositoryImpl implements AuthRepository {
  /// Data operations for the Auth collection
  AuthRepositoryImpl({
    required this.remoteDataSource,    
  });
  
  /// Auth remote data source value
  final AuthRemoteDataSource remoteDataSource;
}
