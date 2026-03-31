import "package:flutter_common_classes/constants/classes/mock_data_source.dart";
import "package:flutter_common_classes/constants/classes/mock_model.dart";

import "../../models/dtos/demon_listed_form_model.dart";
import "../../models/mock/demon_listed_form_faker.dart";
import "demon_remote_data_source.dart";

/// Mocked implementation for [DemonRemoteDataSource]
class DemonRemoteDataMock extends MockDataSource
    implements DemonRemoteDataSource {
  /// Mocked implementation for [DemonRemoteDataSource]
  DemonRemoteDataMock({
    required super.errorPercentage,
    required super.maxWaitTime,
  });

  @override
  Future<List<DemonListedFormModel>> getDemons() async {
    final List<DemonListedFormModel> demons = List.generate(
      faker.randomGenerator.integer(150),
      (_) => DemonListedFormFaker().mockData(),
    );

    await awaitableMethod();

    return demons;
  }
}
