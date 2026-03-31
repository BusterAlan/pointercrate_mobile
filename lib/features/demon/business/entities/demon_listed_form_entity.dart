import "package:equatable/equatable.dart";

/// Entity that contains the data of the Demon in his form listed
class DemonListedFormEntity extends Equatable {
  /// Entity that contains the data of the Demon in his form listed
  const DemonListedFormEntity({
    required this.verifier, 
    required this.name,
    required this.publisher,
    required this.thumbnail, 
    required this.id,
    this.position,
    this.video,
    this.levelId,
  });

  /// Demon name
  final String name;

  /// Demon position value
  final int? position;

  /// Pointercrate internal id value
  final int id;

  /// Demon publisher within the game
  final String publisher; // TODO: Change into player object

  /// Demon verifier, player who beats the level to upload into the GD servers
  final String verifier; // TODO: Change into player object

  /// Demon verification video value
  final Uri? video;
  
  /// Demon thumbnail provided for card
  final String thumbnail;

  /// Demon in-game id value
  final int? levelId;

  @override
  bool get stringify => true;
  
  @override
  List<Object?> get props => [
    name,
    position,
    id,
    publisher,
    verifier,
    video,
    thumbnail,
    levelId,
  ];
}
