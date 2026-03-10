import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../core/cubit_states/state_mixin.dart";
import "../../business/entities/guidelines_entity.dart";

/// Guidelines cubit that contains a state mixin value of guidelines entity
class GuidelinesCubit extends Cubit<StateMixin<GuidelinesEntity>> {
  /// Guidelines cubit that contains a state mixin value of guidelines entity
  GuidelinesCubit() : super(StateMixin<GuidelinesEntity>.loading());
}
