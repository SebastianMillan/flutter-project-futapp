import 'dart:convert';

import 'items.dart';
import 'pagination.dart';

class ClubListResponse {
	Pagination? pagination;
	Items? items;

	ClubListResponse({this.pagination, this.items});

	factory ClubListResponse.fromMap(Map<String, dynamic> data) {
		return ClubListResponse(
			pagination: data['pagination'] == null
						? null
						: Pagination.fromMap(data['pagination'] as Map<String, dynamic>),
			items: data['items'] == null
						? null
						: Items.fromMap(data['items'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toMap() => {
				'pagination': pagination?.toMap(),
				'items': items?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ClubListResponse].
	factory ClubListResponse.fromJson(String data) {
		return ClubListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ClubListResponse] to a JSON string.
	String toJson() => json.encode(toMap());
}
