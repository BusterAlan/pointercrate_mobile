part of "record_bloc.dart";

/// Record state class value, to use within the BLoC use
class RecordState extends Equatable {
  /// Record state class value, to use within the BLoC use
  const RecordState();

  @override
  List<Object> get props => [];

  /// Copy with method
  RecordState copyWith() => const RecordState();
}

/// Initial state for [RecordState]
class RecordInitial extends RecordState {
  /// Initial state for [RecordState]
  const RecordInitial() : super();
}
