import 'package:futapp/models/league_list_response/pagination.dart';
import 'package:futapp/models/team_list_response/item.dart';

class TeamListResponse {
  Pagination? pagination;
  List<Team>? items;

  TeamListResponse({this.pagination, this.items});

  TeamListResponse.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
    if (json['items'] != null) {
      items = <Team>[];
      json['items'].forEach((v) {
        items!.add(new Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
