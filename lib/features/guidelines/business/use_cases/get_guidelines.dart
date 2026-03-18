import "package:flutter_common_classes/constants/classes/use_case.dart";
import "package:flutter_common_classes/errors/failure.dart";
import "package:fpdart/fpdart.dart";

import "../../data/models/params/guidelines_params.dart";
import "../entities/guidelines_entity.dart";
import "../repositories/guidelines_repository.dart";

/// Get guidelines base use case
class GetGuidelines implements UseCaseAsync<GuidelinesEntity, GuidelinesParams> {
  /// Get guidelines base use case
  GetGuidelines({required this.guidelinesRepository});

  /// Guidelines repository collection
  final GuidelinesRepository guidelinesRepository;

  @override
  Future<Either<Failure, GuidelinesEntity>> call({
    required GuidelinesParams params,
  }) {
    // TODO: implement call
    throw UnimplementedError();
  }

  @override
  Failure? failure;
}
