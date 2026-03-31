// ignore_for_file: one_member_abstracts

import "package:flutter_common_classes/errors/failure.dart";
import "package:fpdart/fpdart.dart";

import "../entities/demon_listed_form_entity.dart";

/// Data operations for the Demon collection
abstract class DemonRepository {
  /// Get demons method
  Future<Either<Failure, List<DemonListedFormEntity>>> getDemons();
}
