import "package:fpdart/fpdart.dart";

import "../../../../core/constants/classes/use_case.dart";
import "../../../../core/errors/failure.dart";
import "../../data/models/params/auth_params.dart";
import "../entities/auth_entity.dart";
import "../repositories/auth_repository.dart";

/// Basic auth use case for entire app
class GetAuth implements UseCase<AuthEntity, AuthParams> {
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
}
