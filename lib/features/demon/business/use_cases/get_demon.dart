import "package:fpdart/fpdart.dart";

import "../../../../core/constants/classes/use_case.dart";
import "../../../../core/errors/failure.dart";
import "../../data/models/params/demon_params.dart";
import "../entities/demon_entity.dart";
import "../repositories/demon_repository.dart";

/// Get demon base use case for feature
class GetDemon implements UseCase<DemonEntity, DemonParams> {
  /// Get demon base use case for feature
  GetDemon({required this.demonRepository});
  
  /// Demon repository value
  final DemonRepository demonRepository;

  @override
  Future<Either<Failure, DemonEntity>> call({
    required DemonParams params,
  }) {
    
    // TODO: implement call
    throw UnimplementedError();
    
    
  }
}
