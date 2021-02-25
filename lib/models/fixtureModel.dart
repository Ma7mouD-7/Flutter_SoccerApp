import 'package:soccer/models/statusModel.dart';

class Fixture {
  int id;
  String date;
  Status status;

  Fixture(this.id, this.date, this.status);

  Fixture.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.date = parsedJson['date'];
    this.status = Status.fromJson(parsedJson['status']);
  }
}
