import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'team_detail_event.dart';
part 'team_detail_state.dart';

class TeamDetailBloc extends Bloc<TeamDetailEvent, TeamDetailState> {
  TeamDetailBloc() : super(TeamDetailInitial()) {
    on<TeamDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
