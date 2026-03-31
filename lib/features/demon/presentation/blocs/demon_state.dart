part of "demon_bloc.dart";

/// Demon state class value, to use within the BLoC use
class DemonState extends Equatable {
  /// Demon state class value, to use within the BLoC use
  const DemonState({
    this.demons = const [],
    this.status = DemonStatus.initial,
    this.failure,
    this.hasReachedMax = false,
  });

  /// Demon list values
  final List<DemonListedFormEntity> demons;

  /// Status of the demon list
  final DemonStatus status;

  /// Failure value of the state
  final Failure? failure;

  /// Boolean flag if the list has reached the max range
  final bool hasReachedMax;

  @override
  List<Object?> get props => [demons, status, failure, hasReachedMax];

  /// Copy with method state
  DemonState copyWith({
    List<DemonListedFormEntity>? demons,
    DemonStatus? status,
    Failure? failure,
    bool? hasReachedMax,
  }) =>
      DemonState(
        demons: demons ?? this.demons,
        status: status ?? this.status,
        failure: failure,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      );
}

/// Enum for demon states
enum DemonStatus {
  /// Initial demon state
  initial,

  /// Loading demon state
  loading,

  /// Success demon state
  success,

  /// Failure demon state
  failure,
}
