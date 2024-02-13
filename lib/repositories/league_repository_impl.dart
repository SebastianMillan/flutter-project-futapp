import 'dart:convert';
import 'dart:io';

import 'package:futapp/models/league_list_response/item.dart';
import 'package:futapp/models/league_list_response/league_list_response.dart';
import 'package:futapp/repositories/league_repository.dart';
import 'package:http/http.dart';

class LeagueRepositoryImpl extends LeagueRepository {
  final Client _httpClient = Client();

  @override
  Future<List<League>> fetchLeagueList() async {
    final response = await _httpClient
        .get(Uri.parse('https://futdb.app/api/leagues'), headers: {
      'X-AUTH-TOKEN': '087122e6-2e9d-4b68-a6b7-6349032fc8ea',
    });
    if (response.statusCode == 200) {
      return LeagueListResponse.fromJson(json.decode(response.body)).items!;
    } else {
      throw Exception('Failed to load the Leagues');
    }
  }
}
