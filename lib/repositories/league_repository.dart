import 'package:futapp/models/league_list_response/item.dart';

abstract class LeagueRepository {
  Future<List<League>> fetchLeagueList();
}
