import "package:flutter_common_classes/flutter_common_classes.dart";
import "package:fpdart/fpdart.dart";

import "../entities/demon_entity.dart";
import "../repositories/demon_repository.dart";

/// Get demons base use case for feature
class GetDemons implements UseCaseAsync<List<DemonEntity>, NoParams> {
  /// Get demons base use case for feature
  GetDemons({required this.demonRepository});
  
  /// Demon repository value
  final DemonRepository demonRepository;

  @override
  Future<Either<Failure, List<DemonEntity>>> call({
    required NoParams params,
  }) => demonRepository.getDemons();

  @override
  Failure? failure;
}
