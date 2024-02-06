import 'dart:convert';

import 'item.dart';
import 'pagination.dart';

class LeagueListResponse {
  Pagination? pagination;
  List<League>? items;

  LeagueListResponse({this.pagination, this.items});

  factory LeagueListResponse.fromMap(Map<String, dynamic> data) {
    return LeagueListResponse(
      pagination: data['pagination'] == null
          ? null
          : Pagination.fromMap(data['pagination'] as Map<String, dynamic>),
      items: (data['items'] as List<dynamic>?)
          ?.map((e) => League.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'pagination': pagination?.toMap(),
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LeagueListResponse].
  factory LeagueListResponse.fromJson(String data) {
    return LeagueListResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [LeagueListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
