import "package:fpdart/fpdart.dart";

import "../../../../core/constants/classes/use_case.dart";
import "../../../../core/errors/failure.dart";
import "../../data/models/params/stats_params.dart";
import "../entities/stats_entity.dart";
import "../repositories/stats_repository.dart";

/// Get stats base use case
class GetStats implements UseCase<StatsEntity, StatsParams> {
  /// Get stats base use case
  GetStats({required this.statsRepository});

  /// Stats repository
  final StatsRepository statsRepository;

  @override
  Future<Either<Failure, StatsEntity>> call({
    required StatsParams params,
  }) {
    // TODO: implement call
    throw UnimplementedError();    
  }
}
