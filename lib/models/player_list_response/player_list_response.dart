import 'dart:convert';

import 'item.dart';
import 'pagination.dart';

class PlayerListResponse {
  Pagination? pagination;
  List<Player>? items;

  PlayerListResponse({this.pagination, this.items});

  factory PlayerListResponse.fromMap(Map<String, dynamic> data) {
    return PlayerListResponse(
      pagination: data['pagination'] == null
          ? null
          : Pagination.fromMap(data['pagination'] as Map<String, dynamic>),
      items: (data['items'] as List<dynamic>?)
          ?.map((e) => Player.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'pagination': pagination?.toMap(),
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PlayerListResponse].
  factory PlayerListResponse.fromJson(String data) {
    Map<String, dynamic> jsonMap = json.decode(data);
    return PlayerListResponse(
      pagination: jsonMap['pagination'] == null
          ? null
          : Pagination.fromMap(jsonMap['pagination'] as Map<String, dynamic>),
      items: (jsonMap['items'] as List<dynamic>?)
          ?.map((e) => Player.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  /// `dart:convert`
  ///
  /// Converts [PlayerListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
