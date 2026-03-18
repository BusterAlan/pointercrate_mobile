import "package:flutter_common_classes/constants/classes/use_case.dart";
import "package:flutter_common_classes/errors/failure.dart";
import "package:fpdart/fpdart.dart";

import "../../data/models/params/player_params.dart";
import "../entities/player_entity.dart";
import "../repositories/player_repository.dart";

/// Get player base use case for feature
class GetPlayer implements UseCaseAsync<PlayerEntity, PlayerParams> {
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

  @override
  Failure? failure;
}
