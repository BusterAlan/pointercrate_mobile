import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
part "record_event.dart";
part "record_state.dart";

/// Record BLoC for UI in record collection
class RecordBloc extends Bloc<RecordEvent, RecordState> {
  /// Record BLoC for UI in record collection
  RecordBloc() : super(const RecordInitial());
}
