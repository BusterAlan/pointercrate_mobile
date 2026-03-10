import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../core/cubit_states/state_mixin.dart";
import "../../business/entities/stats_entity.dart";

/// Stats cubit that contains a state mixin value of stats entity
class StatsCubit extends Cubit<StateMixin<StatsEntity>> {  
  /// Stats cubit that contains a state mixin value of stats entity
  StatsCubit() : super(StateMixin<StatsEntity>.loading());
}
