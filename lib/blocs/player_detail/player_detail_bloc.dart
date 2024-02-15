import 'package:bloc/bloc.dart';
import 'package:futapp/repositories/player/player_repository.dart';
import 'package:meta/meta.dart';
import 'package:futapp/models/player_detail_response/player_detail_response.dart';

part 'player_detail_event.dart';
part 'player_detail_state.dart';

class PlayerDetailBloc extends Bloc<PlayerDetailEvent, PlayerDetailState> {
  final PlayerRepository _playerRepository;

  PlayerDetailBloc(this._playerRepository) : super(PlayerDetailInitial()) {
    on<PlayerDetailFetchEvent>(_onPlayerFetchDetail);
  }

  void _onPlayerFetchDetail(
      PlayerDetailFetchEvent event, Emitter<PlayerDetailState> emit) async {
    try {
      final playerDetail = await _playerRepository.fetchPlayerDetails(event.id);
      emit(PlayerDetailFetchSuccess(playerDetail));
    } catch (e) {
      emit(PlayerDetailFetchError(e.toString()));
    }
  }
}
