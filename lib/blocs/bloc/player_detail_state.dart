part of 'player_detail_bloc.dart';

@immutable
sealed class PlayerDetailState {}

final class PlayerDetailInitial extends PlayerDetailState {}

final class PlayerDetailFetchLoading extends PlayerDetailState {}

final class PlayerDetailFetchSuccess extends PlayerDetailState {
  final PlayerResponse playerDetail;
  PlayerDetailFetchSuccess(this.playerDetail);
}

final class PlayerDetailFetchError extends PlayerDetailState {
  final String message;
  PlayerDetailFetchError(this.message);
}
