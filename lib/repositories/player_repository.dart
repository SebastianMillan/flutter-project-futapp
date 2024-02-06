import 'package:futapp/models/player_list_response/item.dart';

abstract class PlayerRepository {
  Future<List<Player>> fetchPlayers();
}
