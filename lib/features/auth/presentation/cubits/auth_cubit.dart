import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../core/cubit_states/state_mixin.dart";
import "../../business/entities/auth_entity.dart";

/// Auth cubit to handle state mixin state
class AuthCubit extends Cubit<StateMixin<AuthEntity>> {
  /// Auth cubit to handle state mixin state
  AuthCubit() : super(StateMixin<AuthEntity>.loading());
}
