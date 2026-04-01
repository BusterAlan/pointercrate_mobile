import "package:flutter_common_classes/constants/classes/mock_model.dart";

import "../dtos/demon_listed_form_model.dart";
import "../dtos/player_minimal_form_model.dart";

/// Mocked implementation for [DemonListedFormModel]
class DemonListedFormFaker implements MockModel<DemonListedFormModel> {
  /// Mocked implementation for [DemonListedFormModel]
  DemonListedFormFaker();

  @override
  DemonListedFormModel mockData() => DemonListedFormModel(
        name: faker.lorem.word(),
        publisher: PlayerMinimalFormModel(
          id: faker.randomGenerator.integer(1_000_000, min: 100_000),
          name: faker.person.firstName(),
          banned: faker.randomGenerator.boolean(),
        ),
        id: faker.randomGenerator.integer(10_000_000, min: 1_000_000),
        position: faker.randomGenerator.integer(150, min: 1),
        levelId: faker.randomGenerator.boolean()
            ? null
            : faker.randomGenerator.integer(700, min: 1),
        thumbnail: faker.image.loremPicsum(),
        verifier: PlayerMinimalFormModel(
          id: faker.randomGenerator.integer(1_000_000, min: 100_000),
          name: faker.person.firstName(),
          banned: faker.randomGenerator.boolean(),
        ),
        video: faker.randomGenerator.boolean() ? null : _uriFaker(),
      );

  Uri _uriFaker() => Uri.parse(faker.internet.httpsUrl());
}
