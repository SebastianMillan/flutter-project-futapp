import 'package:futapp/models/player_detail_response/player_detail_response.dart';
import 'package:futapp/models/player_list_response/player_list_response.dart';

abstract class PlayerRepository {
  Future<List<Player>> fetchPlayers(String player);
  Future<PlayerResponse> fetchPlayerDetails(int playerId);
}
