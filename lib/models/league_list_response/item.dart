class League {
  int? id;
  String? name;
  int? nationId;
  String? gender;

  League({this.id, this.name, this.nationId, this.gender});

  League.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nationId = json['nationId'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['nationId'] = this.nationId;
    data['gender'] = this.gender;
    return data;
  }
}
