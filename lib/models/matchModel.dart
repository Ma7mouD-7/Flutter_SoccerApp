import 'package:soccer/models/fixtureModel.dart';
import 'package:soccer/models/goalModel.dart';
import 'package:soccer/models/teamModel.dart';

class MatchModel {
  Fixture fixture;
  Team home;
  Team away;
  Goal goal;

  MatchModel(this.fixture, this.home, this.away, this.goal);

  MatchModel.fromJson(Map<String, dynamic> parsedJson) {
    this.fixture = Fixture.fromJson(parsedJson['fixture']);
    this.home = Team.fromJson(parsedJson['teams']['home']);
    this.away = Team.fromJson(parsedJson['teams']['away']);
    this.goal = Goal.fromJson(parsedJson['goals']);
  }
}
