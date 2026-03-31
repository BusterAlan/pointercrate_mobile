import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_common_classes/flutter_common_classes.dart";

import "../../business/entities/demon_listed_form_entity.dart";
import "../../business/use_cases/get_demons.dart";

part "demon_event.dart";
part "demon_state.dart";

/// Demon BLoC for consuming events within state/UI
class DemonBloc extends Bloc<DemonEvent, DemonState> {
  /// Demon BLoC for consuming events within state/UI
  DemonBloc({required this.getDemons}) : super(const DemonState()) {
    on<DemonListFetched>(_onDemonListFetched);
    on<DemonNextPageFetched>(_onDemonNextPageFetched);
  }

  /// Get demons use case
  final GetDemons getDemons;

  // Initial load
  Future<void> _onDemonListFetched(
    DemonListFetched event,
    Emitter<DemonState> emit,
  ) async {
    emit(state.copyWith(status: DemonStatus.loading));

    final result = await getDemons(params: const NoParams());

    result.fold(
      (failure) => emit(state.copyWith(
        status: DemonStatus.failure,
        failure: failure,
      )),
      (demons) => emit(
        state.copyWith(
          status: DemonStatus.success,
          demons: demons,
          hasReachedMax: demons.length < 75,
        ),
      ),
    );
  }

  // Paginación: agrega más al final de la lista existente
  Future<void> _onDemonNextPageFetched(
    DemonNextPageFetched event,
    Emitter<DemonState> emit,
  ) async {
    if (state.hasReachedMax) {
      return;
    }

    final result = await getDemons(params: const NoParams());

    result.fold(
      (failure) => emit(state.copyWith(
        status: DemonStatus.failure,
        failure: failure,
      )),
      (newDemons) => emit(
        newDemons.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : state.copyWith(
                status: DemonStatus.success,
                demons: [...state.demons, ...newDemons],
              ),
      ),
    );
  }
}
