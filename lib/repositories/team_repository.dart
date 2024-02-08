import 'package:futapp/models/team_list_response/item.dart';

abstract class TeamRepository {
  Future<List<Team>> fetchTeamList(int page);
  Future<Team> fetchTeamDetail(int idTeam);
}
