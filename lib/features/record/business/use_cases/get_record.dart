import "package:flutter_common_classes/constants/classes/use_case.dart";
import "package:flutter_common_classes/errors/failure.dart";
import "package:fpdart/fpdart.dart";

import "../../data/models/params/record_params.dart";
import "../entities/record_entity.dart";
import "../repositories/record_repository.dart";

/// Get record base use case for feature use
class GetRecord implements UseCaseAsync<RecordEntity, RecordParams> {
  /// Get record base use case for feature use
  GetRecord({required this.recordRepository});

  /// Record repository value
  final RecordRepository recordRepository;

  @override
  Future<Either<Failure, RecordEntity>> call({
    required RecordParams params,
  }) {
    // TODO: implement call
    throw UnimplementedError();
  }

  @override
  Failure? failure;
}
