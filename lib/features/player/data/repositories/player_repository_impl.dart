import "../../business/repositories/player_repository.dart";

import "../data_sources/remote/player_remote_data_source.dart";

/// Data operations for the Player collection
class PlayerRepositoryImpl implements PlayerRepository {
  /// Data operations for the Player collection
  PlayerRepositoryImpl({
    required this.remoteDataSource, 
  });
  
  /// Player remote data source value
  final PlayerRemoteDataSource remoteDataSource;
}
