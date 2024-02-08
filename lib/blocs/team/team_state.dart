part of 'team_bloc.dart';

@immutable
sealed class TeamState {}

final class TeamInitial extends TeamState {}

final class TeamListFetchSuccess extends TeamState {
  final List<Team> teamList;
  TeamListFetchSuccess(this.teamList);
}

final class TeamListFetchError extends TeamState {
  final String errorMessage;
  TeamListFetchError(this.errorMessage);
}
