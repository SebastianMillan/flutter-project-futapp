import 'dart:convert';

class Team {
  int? id;
  String? name;
  int? league;

  Team({this.id, this.name, this.league});

  factory Team.fromMap(Map<String, dynamic> data) => Team(
        id: data['id'] as int?,
        name: data['name'] as String?,
        league: data['league'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'league': league,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory Team.fromJson(String data) {
    return Team.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());
}
