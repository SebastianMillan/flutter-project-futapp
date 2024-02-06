import 'dart:convert';

import 'item.dart';
import 'pagination.dart';

class TeamListResponse {
  Pagination? pagination;
  List<Team>? items;

  TeamListResponse({this.pagination, this.items});

  factory TeamListResponse.fromMap(Map<String, dynamic> data) {
    return TeamListResponse(
      pagination: data['pagination'] == null
          ? null
          : Pagination.fromMap(data['pagination'] as Map<String, dynamic>),
      items: (data['items'] as List<dynamic>?)
          ?.map((e) => Team.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'pagination': pagination?.toMap(),
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TeamListResponse].
  factory TeamListResponse.fromJson(String data) {
    return TeamListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TeamListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
