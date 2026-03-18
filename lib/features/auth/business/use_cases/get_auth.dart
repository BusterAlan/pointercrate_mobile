import "package:flutter_common_classes/constants/classes/use_case.dart";
import "package:flutter_common_classes/errors/failure.dart";
import "package:fpdart/fpdart.dart";

import "../../data/models/params/auth_params.dart";
import "../entities/auth_entity.dart";
import "../repositories/auth_repository.dart";

/// Basic auth use case for entire app
class GetAuth implements UseCaseAsync<AuthEntity, AuthParams> {
  /// Basic auth use case for entire app
  GetAuth({required this.authRepository});

  /// Auth repository value
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, AuthEntity>> call({
    required AuthParams params,
  }) {
    // TODO: implement call
    throw UnimplementedError();
  }

  @override
  Failure? failure;
}
