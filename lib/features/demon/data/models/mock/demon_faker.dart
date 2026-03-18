import "package:flutter_common_classes/constants/classes/mock_model.dart";

import "../dtos/demon_model.dart";

/// Mocked implementation for [DemonModel]
class DemonFaker implements MockModel<DemonModel> {
  /// Mocked implementation for [DemonModel]
  DemonFaker(this.index);

  /// Optional index value to show
  final int? index; 

  @override
  DemonModel mockData() => DemonModel(
    name: faker.lorem.word(), 
    publisher: faker.person.firstName(), 
    points: faker.randomGenerator.decimal(min: 100), 
    position: index ?? faker.randomGenerator.integer(150, min: 1),
  );
}
