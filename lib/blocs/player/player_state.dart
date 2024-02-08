part of 'player_bloc.dart';

@immutable
sealed class PlayerState {}

final class PlayerInitial extends PlayerState {}

final class PlayerFetchLoading extends PlayerState {}

final class PlayerFetchSucess extends PlayerState {
  final List<Player> players;
  PlayerFetchSucess(this.players);
}

final class PlayerFetchError extends PlayerState {
  final String message;
  PlayerFetchError(this.message);
}
