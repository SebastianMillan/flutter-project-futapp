class TeamDet {
  int? id;
  String? name;
  int? league;

  TeamDet({this.id, this.name, this.league});

  TeamDet.fromJson(Map<String, dynamic> json) {
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
