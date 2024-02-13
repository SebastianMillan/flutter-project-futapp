import 'package:futapp/models/team_detail_response/team_detail.dart';
import 'package:futapp/models/team_list_response/item.dart';

abstract class TeamRepository {
  Future<List<Team>> fetchTeamList(int page);
  Future<TeamDet> fetchTeamDetail(int idTeam);
}
