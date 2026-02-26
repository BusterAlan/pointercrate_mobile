import "package:fpdart/fpdart.dart";

import "../../../../core/constants/classes/use_case.dart";
import "../../../../core/errors/failure.dart";
import "../../data/models/params/player_params.dart";
import "../entities/player_entity.dart";
import "../repositories/player_repository.dart";

/// Get player base use case for feature
class GetPlayer implements UseCase<PlayerEntity, PlayerParams> {
  /// Get player base use case for feature
  GetPlayer({required this.playerRepository});

  /// Player repository value
  final PlayerRepository playerRepository;

  @override
  Future<Either<Failure, PlayerEntity>> call({
    required PlayerParams params,
  }) {
    
    // TODO: implement call
    throw UnimplementedError();
    
    
  }
}
