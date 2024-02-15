part of 'team_bloc.dart';

@immutable
sealed class TeamEvent {}

class TeamListFetchEvent extends TeamEvent {
  final int page;
  TeamListFetchEvent(this.page);
}
