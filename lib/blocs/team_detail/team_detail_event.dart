part of 'team_detail_bloc.dart';

@immutable
sealed class TeamDetailEvent {}

class TeamDetailFetchEvent extends TeamDetailEvent {
  final int idTeam;
  TeamDetailFetchEvent(this.idTeam);
}
