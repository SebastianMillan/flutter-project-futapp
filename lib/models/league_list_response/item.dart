import 'dart:convert';

class League {
  int? id;
  String? name;
  dynamic nationId;
  dynamic gender;

  League({this.id, this.name, this.nationId, this.gender});

  factory League.fromMap(Map<String, dynamic> data) => League(
        id: data['id'] as int?,
        name: data['name'] as String?,
        nationId: data['nationId'] as dynamic,
        gender: data['gender'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'nationId': nationId,
        'gender': gender,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory League.fromJson(String data) {
    return League.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());
}
