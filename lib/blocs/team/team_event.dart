part of 'team_bloc.dart';

@immutable
sealed class TeamEvent {}

class TeamListFetchEvent extends TeamEvent {}
