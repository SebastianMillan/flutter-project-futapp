import 'package:futapp/models/team_detail_response/team_detail.dart';

class TeamDetailResponse {
  TeamDet? club;

  TeamDetailResponse({this.club});

  TeamDetailResponse.fromJson(Map<String, dynamic> json) {
    club = json['club'] != null ? new TeamDet.fromJson(json['club']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.club != null) {
      data['club'] = this.club!.toJson();
    }
    return data;
  }
}
