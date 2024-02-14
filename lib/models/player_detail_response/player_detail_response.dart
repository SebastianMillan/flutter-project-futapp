import 'package:futapp/models/player_list_response/player_list_response.dart';

class PlayerResponse {
  Player? player;

  PlayerResponse({this.player});

  PlayerResponse.fromJson(Map<String, dynamic> json) {
    player = json['player'] != null ? Player.fromJson(json['player']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (player != null) {
      data['player'] = player!.toJson();
    }
    return data;
  }
}
