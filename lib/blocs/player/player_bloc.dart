import 'package:bloc/bloc.dart';
import 'package:futapp/models/player_list_response/player_list_response.dart';
import 'package:futapp/repositories/player/player_repository.dart';
import 'package:meta/meta.dart';

part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerRepository _playerRepository;

  PlayerBloc(this._playerRepository) : super(PlayerInitial()) {
    on<PlayerEvent>(_onPlayerFetchList);
  }

  void _onPlayerFetchList(PlayerEvent event, Emitter<PlayerState> emit) async {
    try {
      final playerList = await _playerRepository.fetchPlayers(event.toString());
      emit(PlayerFetchSucess(playerList));
    } catch (e) {
      emit(PlayerFetchError(e.toString()));
    }
  }
}
