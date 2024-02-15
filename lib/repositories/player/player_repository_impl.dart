import 'dart:convert';
import 'package:futapp/models/player_detail_response/player_detail_response.dart';
import 'package:futapp/models/player_list_response/player_list_response.dart';
import 'package:futapp/repositories/player/player_repository.dart';
import 'package:http/http.dart';

class PlayerRepositoryImpl extends PlayerRepository {
  final Client _client = Client();

  @override
  Future<List<Player>> fetchPlayers(String player) async {
    final response = await _client.get(
        Uri.parse('https://futdb.app/api/players'),
        headers: {'X-AUTH-TOKEN': 'f0aef560-81d4-4981-b204-40bf394fd41b'});
    if (response.statusCode == 200) {
      final jsonValue = jsonDecode(response.body);
      final responseList = PlayerListResponse.fromJson(jsonValue).items!;
      return responseList;
    } else {
      throw Exception('Failed to load players');
    }
  }

  @override
  Future<PlayerResponse> fetchPlayerDetails(int playerId) async {
    final response = await _client.get(
        Uri.parse('https://futdb.app/api/players/$playerId'),
        headers: {'X-AUTH-TOKEN': 'f0aef560-81d4-4981-b204-40bf394fd41b'});
    if (response.statusCode == 200) {
      final jsonValue = jsonDecode(response.body);
      final responsePlayer = PlayerResponse.fromJson(jsonValue);
      return responsePlayer;
    } else {
      throw Exception('Failed to load the Player');
    }
  }
}
