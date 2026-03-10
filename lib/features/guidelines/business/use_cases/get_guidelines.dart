import "package:fpdart/fpdart.dart";

import "../../../../core/constants/classes/use_case.dart";
import "../../../../core/errors/failure.dart";
import "../../data/models/params/guidelines_params.dart";
import "../entities/guidelines_entity.dart";
import "../repositories/guidelines_repository.dart";

/// Get guidelines base use case
class GetGuidelines implements UseCase<GuidelinesEntity, GuidelinesParams> {
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
}
