part of 'team_detail_bloc.dart';

@immutable
sealed class TeamDetailState {}

final class TeamDetailInitial extends TeamDetailState {}

final class TeamDetailFetchSucess extends TeamDetailState {
  final TeamDet detailTeam;
  TeamDetailFetchSucess(this.detailTeam);
}

final class TeamDetailFetchError extends TeamDetailState {
  final String errorMessage;
  TeamDetailFetchError(this.errorMessage);
}
