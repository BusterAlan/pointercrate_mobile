import "dart:typed_data";

import "package:equatable/equatable.dart";

/// Entity that contains the data of the Demon.
class DemonEntity extends Equatable {
  /// Entity that contains the data of the Demon.
  const DemonEntity({
    required this.name,
    required this.publisher,
    required this.points,
    required this.position,
    this.thumbnail,
  });

  /// Demon position value
  final int position;

  /// Demon name
  final String name;

  /// Demon publisher within the game
  final String publisher;

  /// Demon list points that gives when completing
  final double points;

  /// Demon thumbnail provided for card
  final Uint8List? thumbnail;

  @override
  List<Object?> get props => [];

  @override
  bool get stringify => true;
}
