part of "demon_bloc.dart";

/// Abstraction class for events in Demon collection for BLoC consumers
abstract class DemonEvent extends Equatable {
  /// Abstraction class for events in Demon collection for BLoC consumers
  const DemonEvent();

  @override
  List<Object> get props => [];
}

/// Triggers initial load of the demons list
class DemonListFetched extends DemonEvent {
  /// Triggers initial load of the demons list
  const DemonListFetched();
}

/// Triggers the load to the next page (pagination)
class DemonNextPageFetched extends DemonEvent {
  /// Triggers the load to the next page (pagination)
  const DemonNextPageFetched();
}
