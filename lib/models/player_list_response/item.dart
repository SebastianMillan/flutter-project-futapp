import 'dart:convert';

class Player {
  int? id;
  dynamic resourceId;
  dynamic resourceBaseId;
  dynamic futBinId;
  dynamic futWizId;
  String? firstName;
  String? lastName;
  String? name;
  dynamic commonName;
  int? height;
  int? weight;
  String? gender;
  String? birthDate;
  int? age;
  int? league;
  int? nation;
  int? club;
  int? rarity;
  dynamic playStyles;
  dynamic playStylesPlus;
  String? position;
  dynamic positionAlternatives;
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
  dynamic paceAttributes;
  dynamic shootingAttributes;
  dynamic passingAttributes;
  dynamic dribblingAttributes;
  dynamic defendingAttributes;
  dynamic physicalityAttributes;
  dynamic goalkeeperAttributes;

  Player({
    this.id,
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
    this.goalkeeperAttributes,
  });

  factory Player.fromMap(Map<String, dynamic> data) => Player(
        id: data['id'] as int?,
        resourceId: data['resourceId'] as dynamic,
        resourceBaseId: data['resourceBaseId'] as dynamic,
        futBinId: data['futBinId'] as dynamic,
        futWizId: data['futWizId'] as dynamic,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        name: data['name'] as String?,
        commonName: data['commonName'] as dynamic,
        height: data['height'] as int?,
        weight: data['weight'] as int?,
        gender: data['gender'] as String?,
        birthDate: data['birthDate'] as String?,
        age: data['age'] as int?,
        league: data['league'] as int?,
        nation: data['nation'] as int?,
        club: data['club'] as int?,
        rarity: data['rarity'] as int?,
        playStyles: data['playStyles'] as dynamic,
        playStylesPlus: data['playStylesPlus'] as dynamic,
        position: data['position'] as String?,
        positionAlternatives: data['positionAlternatives'] as dynamic,
        skillMoves: data['skillMoves'] as int?,
        weakFoot: data['weakFoot'] as int?,
        foot: data['foot'] as String?,
        attackWorkRate: data['attackWorkRate'] as String?,
        defenseWorkRate: data['defenseWorkRate'] as String?,
        totalStats: data['totalStats'] as int?,
        totalStatsInGame: data['totalStatsInGame'] as int?,
        color: data['color'] as String?,
        rating: data['rating'] as int?,
        ratingAverage: data['ratingAverage'] as int?,
        pace: data['pace'] as int?,
        shooting: data['shooting'] as int?,
        passing: data['passing'] as int?,
        dribbling: data['dribbling'] as int?,
        defending: data['defending'] as int?,
        physicality: data['physicality'] as int?,
        paceAttributes: data['paceAttributes'] as dynamic,
        shootingAttributes: data['shootingAttributes'] as dynamic,
        passingAttributes: data['passingAttributes'] as dynamic,
        dribblingAttributes: data['dribblingAttributes'] as dynamic,
        defendingAttributes: data['defendingAttributes'] as dynamic,
        physicalityAttributes: data['physicalityAttributes'] as dynamic,
        goalkeeperAttributes: data['goalkeeperAttributes'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'resourceId': resourceId,
        'resourceBaseId': resourceBaseId,
        'futBinId': futBinId,
        'futWizId': futWizId,
        'firstName': firstName,
        'lastName': lastName,
        'name': name,
        'commonName': commonName,
        'height': height,
        'weight': weight,
        'gender': gender,
        'birthDate': birthDate,
        'age': age,
        'league': league,
        'nation': nation,
        'club': club,
        'rarity': rarity,
        'playStyles': playStyles,
        'playStylesPlus': playStylesPlus,
        'position': position,
        'positionAlternatives': positionAlternatives,
        'skillMoves': skillMoves,
        'weakFoot': weakFoot,
        'foot': foot,
        'attackWorkRate': attackWorkRate,
        'defenseWorkRate': defenseWorkRate,
        'totalStats': totalStats,
        'totalStatsInGame': totalStatsInGame,
        'color': color,
        'rating': rating,
        'ratingAverage': ratingAverage,
        'pace': pace,
        'shooting': shooting,
        'passing': passing,
        'dribbling': dribbling,
        'defending': defending,
        'physicality': physicality,
        'paceAttributes': paceAttributes,
        'shootingAttributes': shootingAttributes,
        'passingAttributes': passingAttributes,
        'dribblingAttributes': dribblingAttributes,
        'defendingAttributes': defendingAttributes,
        'physicalityAttributes': physicalityAttributes,
        'goalkeeperAttributes': goalkeeperAttributes,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory Player.fromJson(String data) {
    return Player.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());
}
