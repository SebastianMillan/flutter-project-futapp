part of 'player_bloc.dart';

@immutable
sealed class PlayerEvent {}

class PlayerFetchPopular extends PlayerEvent {
  final String players;
  PlayerFetchPopular(this.players);
}

class PlayerFetchDetail extends PlayerEvent {
  final int id;
  PlayerFetchDetail(this.id);
}
