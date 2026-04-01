import "package:equatable/equatable.dart";

/// Entity that displays the minimal form of the player data
class PlayerMinimalFormEntity extends Equatable {
  /// Entity that displays the minimal form of the player data
  const PlayerMinimalFormEntity({
    required this.id,
    required this.name,
    required this.banned,
  });

  /// Id of the player
  final int id;

  /// Name of the player
  final String name;

  /// Flag if the player is banned or not
  final bool banned;
  
  @override
  List<Object?> get props => [
    id,
    name,
    banned,
  ];
}
