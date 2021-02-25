class Team {
  int id;
  String name;
  String logo;
  bool winner;

  Team(this.id, this.name, this.logo, this.winner);

  Team.fromJson(Map<dynamic, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.name = parsedJson['name'];
    this.logo = parsedJson['logo'];
    this.winner = parsedJson['winner'];
  }
}
