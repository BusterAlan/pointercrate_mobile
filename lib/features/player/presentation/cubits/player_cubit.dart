import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_common_classes/cubit_states/state_mixin.dart";

import "../../business/entities/player_entity.dart";

/// Player cubit to handle the state mixin states with the player collection
class PlayerCubit extends Cubit<StateMixin<PlayerEntity>> {
  /// Player cubit to handle the state mixin states with the player collection
  PlayerCubit() : super(StateMixin<PlayerEntity>.loading());
}
