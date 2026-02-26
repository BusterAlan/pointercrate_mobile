
import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
part "demon_event.dart";
part "demon_state.dart";

/// Demon BLoC for consuming events within state/UI
class DemonBloc extends Bloc<DemonEvent, DemonState> {
  /// Demon BLoC for consuming events within state/UI
  DemonBloc() : super(const DemonInitial());
}
