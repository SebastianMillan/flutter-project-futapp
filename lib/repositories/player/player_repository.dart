import 'package:futapp/models/player_list_response/player_list_response.dart';

abstract class PlayerRepository {
  Future<List<Player>> fetchPlayers(String player);
  Future<Player> fetchPlayerDetails(int playerId);
}
