part of 'league_bloc.dart';

@immutable
sealed class LeagueState {}

final class LeagueInitial extends LeagueState {}

final class LeagueListFetchSuccess extends LeagueState {
  final List<League> leagueList;
  LeagueListFetchSuccess(this.leagueList);
}

final class LeagueListFetchError extends LeagueState {
  final String errorMessage;
  LeagueListFetchError(this.errorMessage);
}
