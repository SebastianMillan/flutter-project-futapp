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

class Player {
  int? id;
  Null? resourceId;
  Null? resourceBaseId;
  Null? futBinId;
  Null? futWizId;
  String? firstName;
  String? lastName;
  String? name;
  Null? commonName;
  int? height;
  int? weight;
  String? gender;
  String? birthDate;
  int? age;
  int? league;
  int? nation;
  int? club;
  int? rarity;
  Null? playStyles;
  Null? playStylesPlus;
  String? position;
  Null? positionAlternatives;
  int? skillMoves;
  int? weakFoot;
  String? foot;
  String? attackWorkRate;
  String? defenseWorkRate;
  int? totalStats;
  int? totalStatsInGame;
  String? color;
  int? rating;
  int? ratingAverage;
  int? pace;
  int? shooting;
  int? passing;
  int? dribbling;
  int? defending;
  int? physicality;
  Null? paceAttributes;
  Null? shootingAttributes;
  Null? passingAttributes;
  Null? dribblingAttributes;
  Null? defendingAttributes;
  Null? physicalityAttributes;
  Null? goalkeeperAttributes;

  Player(
      {this.id,
      this.resourceId,
      this.resourceBaseId,
      this.futBinId,
      this.futWizId,
      this.firstName,
      this.lastName,
      this.name,
      this.commonName,
      this.height,
      this.weight,
      this.gender,
      this.birthDate,
      this.age,
      this.league,
      this.nation,
      this.club,
      this.rarity,
      this.playStyles,
      this.playStylesPlus,
      this.position,
      this.positionAlternatives,
      this.skillMoves,
      this.weakFoot,
      this.foot,
      this.attackWorkRate,
      this.defenseWorkRate,
      this.totalStats,
      this.totalStatsInGame,
      this.color,
      this.rating,
      this.ratingAverage,
      this.pace,
      this.shooting,
      this.passing,
      this.dribbling,
      this.defending,
      this.physicality,
      this.paceAttributes,
      this.shootingAttributes,
      this.passingAttributes,
      this.dribblingAttributes,
      this.defendingAttributes,
      this.physicalityAttributes,
      this.goalkeeperAttributes});

  Player.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceId = json['resourceId'];
    resourceBaseId = json['resourceBaseId'];
    futBinId = json['futBinId'];
    futWizId = json['futWizId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    name = json['name'];
    commonName = json['commonName'];
    height = json['height'];
    weight = json['weight'];
    gender = json['gender'];
    birthDate = json['birthDate'];
    age = json['age'];
    league = json['league'];
    nation = json['nation'];
    club = json['club'];
    rarity = json['rarity'];
    playStyles = json['playStyles'];
    playStylesPlus = json['playStylesPlus'];
    position = json['position'];
    positionAlternatives = json['positionAlternatives'];
    skillMoves = json['skillMoves'];
    weakFoot = json['weakFoot'];
    foot = json['foot'];
    attackWorkRate = json['attackWorkRate'];
    defenseWorkRate = json['defenseWorkRate'];
    totalStats = json['totalStats'];
    totalStatsInGame = json['totalStatsInGame'];
    color = json['color'];
    rating = json['rating'];
    ratingAverage = json['ratingAverage'];
    pace = json['pace'];
    shooting = json['shooting'];
    passing = json['passing'];
    dribbling = json['dribbling'];
    defending = json['defending'];
    physicality = json['physicality'];
    paceAttributes = json['paceAttributes'];
    shootingAttributes = json['shootingAttributes'];
    passingAttributes = json['passingAttributes'];
    dribblingAttributes = json['dribblingAttributes'];
    defendingAttributes = json['defendingAttributes'];
    physicalityAttributes = json['physicalityAttributes'];
    goalkeeperAttributes = json['goalkeeperAttributes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['resourceId'] = resourceId;
    data['resourceBaseId'] = resourceBaseId;
    data['futBinId'] = futBinId;
    data['futWizId'] = futWizId;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['name'] = name;
    data['commonName'] = commonName;
    data['height'] = height;
    data['weight'] = weight;
    data['gender'] = gender;
    data['birthDate'] = birthDate;
    data['age'] = age;
    data['league'] = league;
    data['nation'] = nation;
    data['club'] = club;
    data['rarity'] = rarity;
    data['playStyles'] = playStyles;
    data['playStylesPlus'] = playStylesPlus;
    data['position'] = position;
    data['positionAlternatives'] = positionAlternatives;
    data['skillMoves'] = skillMoves;
    data['weakFoot'] = weakFoot;
    data['foot'] = foot;
    data['attackWorkRate'] = attackWorkRate;
    data['defenseWorkRate'] = defenseWorkRate;
    data['totalStats'] = totalStats;
    data['totalStatsInGame'] = totalStatsInGame;
    data['color'] = color;
    data['rating'] = rating;
    data['ratingAverage'] = ratingAverage;
    data['pace'] = pace;
    data['shooting'] = shooting;
    data['passing'] = passing;
    data['dribbling'] = dribbling;
    data['defending'] = defending;
    data['physicality'] = physicality;
    data['paceAttributes'] = paceAttributes;
    data['shootingAttributes'] = shootingAttributes;
    data['passingAttributes'] = passingAttributes;
    data['dribblingAttributes'] = dribblingAttributes;
    data['defendingAttributes'] = defendingAttributes;
    data['physicalityAttributes'] = physicalityAttributes;
    data['goalkeeperAttributes'] = goalkeeperAttributes;
    return data;
  }
}
