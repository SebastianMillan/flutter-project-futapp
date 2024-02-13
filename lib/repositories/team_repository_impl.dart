import 'dart:convert';

import 'package:futapp/models/team_detail_response/team_detail.dart';
import 'package:futapp/models/team_list_response/item.dart';
import 'package:futapp/models/team_list_response/team_list_response.dart';
import 'package:futapp/repositories/team_repository.dart';
import 'package:http/http.dart';

class TeamRepositoryImpl extends TeamRepository {
  final Client _httpClient = Client();

  @override
  Future<List<Team>> fetchTeamList(int page) async {
    final response = await _httpClient
        .get(Uri.parse('https://futdb.app/api/clubs?page=$page'), headers: {
      'X-AUTH-TOKEN': '087122e6-2e9d-4b68-a6b7-6349032fc8ea',
    });
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['items'];
      return data.map((e) => Team.fromJson(e)).toList();
    } else {
      return throw Exception('Failed to load the Teams');
    }
  }

  @override
  Future<TeamDet> fetchTeamDetail(int idTeam) async {
    final response = await _httpClient
        .get(Uri.parse('https://futdb.app/api/clubs/$idTeam'), headers: {
      'X-AUTH-TOKEN': '087122e6-2e9d-4b68-a6b7-6349032fc8ea',
    });
    if (response.statusCode == 200) {
      return TeamDet.fromJson(json.decode(response.body)['club']);
    } else {
      throw Exception('Failed to load this Team');
    }
  }
}
