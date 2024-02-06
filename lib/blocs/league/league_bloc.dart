import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'league_event.dart';
part 'league_state.dart';

class LeagueBloc extends Bloc<LeagueEvent, LeagueState> {
  LeagueBloc() : super(LeagueInitial()) {
    on<LeagueEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
