import 'dart:convert';
import 'package:futapp/models/player_list_response/item.dart';
import 'package:futapp/repositories/player_repository.dart';
import 'package:http/http.dart';

class PlayerRepositoryImpl extends PlayerRepository {
  final Client _client = Client();

  @override
  Future<List<Player>> fetchPlayers() async {
    final response =
        await _client.get(Uri.parse('https://futdb.app/api/clubs'));
    throw UnimplementedError();
  }
}
