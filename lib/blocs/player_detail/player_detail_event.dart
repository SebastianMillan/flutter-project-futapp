part of 'player_detail_bloc.dart';

@immutable
sealed class PlayerDetailEvent {}

class PlayerDetailFetchEvent extends PlayerDetailEvent {
  final int id;
  PlayerDetailFetchEvent(this.id);
}
