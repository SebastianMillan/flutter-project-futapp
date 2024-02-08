class Team {
  int? id;
  String? name;
  int? league;

  Team({this.id, this.name, this.league});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    league = json['league'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['league'] = this.league;
    return data;
  }
}
