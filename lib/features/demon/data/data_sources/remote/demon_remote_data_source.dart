// ignore_for_file: one_member_abstracts

import "../../../../../core/adapters/dio_adapter.dart";
import "../../models/dtos/demon_listed_form_model.dart";

/// Remote data source for the Demon collection
abstract class DemonRemoteDataSource {
  /// Get demons method
  Future<List<DemonListedFormModel>> getDemons();
}

/// Remote data source for the Demon collection
class DemonRemoteDataSourceImpl implements DemonRemoteDataSource {
  /// Remote data source for the Demon collection
  DemonRemoteDataSourceImpl({required this.dio});

  /// Dio adapter instance
  final DioAdapter dio;

  @override
  Future<List<DemonListedFormModel>> getDemons() {
    // TODO: implement getDemons
    throw UnimplementedError();
  }
}
