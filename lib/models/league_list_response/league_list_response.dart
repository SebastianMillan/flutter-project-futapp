import 'package:futapp/models/league_list_response/item.dart';
import 'package:futapp/models/league_list_response/pagination.dart';

class LeagueListResponse {
  Pagination? pagination;
  List<League>? items;

  LeagueListResponse({this.pagination, this.items});

  LeagueListResponse.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
    if (json['items'] != null) {
      items = <League>[];
      json['items'].forEach((v) {
        items!.add(new League.fromJson(v));
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
