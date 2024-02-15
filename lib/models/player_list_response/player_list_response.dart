class PlayerListResponse {
  Pagination? pagination;
  List<Player>? items;

  PlayerListResponse({this.pagination, this.items});

  PlayerListResponse.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
    if (json['items'] != null) {
      items = <Player>[];
      json['items'].forEach((v) {
        items!.add(new Player.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  int? countCurrent;
  int? countTotal;
  int? pageCurrent;
  int? pageTotal;
  int? itemsPerPage;

  Pagination(
      {this.countCurrent,
      this.countTotal,
      this.pageCurrent,
      this.pageTotal,
      this.itemsPerPage});

  Pagination.fromJson(Map<String, dynamic> json) {
    countCurrent = json['countCurrent'];
    countTotal = json['countTotal'];
    pageCurrent = json['pageCurrent'];
    pageTotal = json['pageTotal'];
    itemsPerPage = json['itemsPerPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countCurrent'] = this.countCurrent;
    data['countTotal'] = this.countTotal;
    data['pageCurrent'] = this.pageCurrent;
    data['pageTotal'] = this.pageTotal;
    data['itemsPerPage'] = this.itemsPerPage;
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
  String? commonName;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['resourceId'] = this.resourceId;
    data['resourceBaseId'] = this.resourceBaseId;
    data['futBinId'] = this.futBinId;
    data['futWizId'] = this.futWizId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['name'] = this.name;
    data['commonName'] = this.commonName;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['gender'] = this.gender;
    data['birthDate'] = this.birthDate;
    data['age'] = this.age;
    data['league'] = this.league;
    data['nation'] = this.nation;
    data['club'] = this.club;
    data['rarity'] = this.rarity;
    data['playStyles'] = this.playStyles;
    data['playStylesPlus'] = this.playStylesPlus;
    data['position'] = this.position;
    data['positionAlternatives'] = this.positionAlternatives;
    data['skillMoves'] = this.skillMoves;
    data['weakFoot'] = this.weakFoot;
    data['foot'] = this.foot;
    data['attackWorkRate'] = this.attackWorkRate;
    data['defenseWorkRate'] = this.defenseWorkRate;
    data['totalStats'] = this.totalStats;
    data['totalStatsInGame'] = this.totalStatsInGame;
    data['color'] = this.color;
    data['rating'] = this.rating;
    data['ratingAverage'] = this.ratingAverage;
    data['pace'] = this.pace;
    data['shooting'] = this.shooting;
    data['passing'] = this.passing;
    data['dribbling'] = this.dribbling;
    data['defending'] = this.defending;
    data['physicality'] = this.physicality;
    data['paceAttributes'] = this.paceAttributes;
    data['shootingAttributes'] = this.shootingAttributes;
    data['passingAttributes'] = this.passingAttributes;
    data['dribblingAttributes'] = this.dribblingAttributes;
    data['defendingAttributes'] = this.defendingAttributes;
    data['physicalityAttributes'] = this.physicalityAttributes;
    data['goalkeeperAttributes'] = this.goalkeeperAttributes;
    return data;
  }
}
