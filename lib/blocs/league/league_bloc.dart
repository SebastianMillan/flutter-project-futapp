import 'package:bloc/bloc.dart';
import 'package:futapp/models/league_list_response/item.dart';
import 'package:futapp/repositories/league_repository.dart';
import 'package:meta/meta.dart';

part 'league_event.dart';
part 'league_state.dart';

class LeagueBloc extends Bloc<LeagueEvent, LeagueState> {
  final LeagueRepository leagueRepository;
  LeagueBloc(this.leagueRepository) : super(LeagueInitial()) {
    on<LeagueListFetchEvent>((event, emit) async {
      try {
        emit(LeagueListFetchSuccess(await leagueRepository.fetchLeagueList()));
      } catch (error) {
        emit(LeagueListFetchError(error.toString()));
      }
    });
  }
}
