import 'package:bloc/bloc.dart';
import 'package:futapp/models/team_list_response/item.dart';
import 'package:futapp/repositories/team_repository.dart';
import 'package:meta/meta.dart';

part 'team_event.dart';
part 'team_state.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  final TeamRepository teamRepository;
  TeamBloc(this.teamRepository) : super(TeamInitial()) {
    on<TeamListFetchEvent>((event, emit) async {
      List<Team> allTeams = [];
      for (int page = 1; page <= event.page; page++) {
        try {
          final teams = await teamRepository.fetchTeamList(page);
          allTeams.addAll(teams);
          emit(TeamListFetchSuccess(allTeams));
        } catch (error) {
          emit(TeamListFetchError(error.toString()));
        }
      }
    });
  }
}
