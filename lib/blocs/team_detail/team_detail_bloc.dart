import 'package:bloc/bloc.dart';
import 'package:futapp/models/team_detail_response/team_detail.dart';
import 'package:futapp/models/team_list_response/item.dart';
import 'package:futapp/repositories/team_repository.dart';
import 'package:meta/meta.dart';

part 'team_detail_event.dart';
part 'team_detail_state.dart';

class TeamDetailBloc extends Bloc<TeamDetailEvent, TeamDetailState> {
  final TeamRepository teamRepository;
  TeamDetailBloc(this.teamRepository) : super(TeamDetailInitial()) {
    on<TeamDetailFetchEvent>((event, emit) async {
      try {
        emit(TeamDetailFetchSucess(
            await teamRepository.fetchTeamDetail(event.idTeam)));
        return;
      } catch (error) {
        emit(TeamDetailFetchError(error.toString()));
        return;
      }
    });
  }
}
