class Status {
  int elapsedTime;
  String long;
  String short;

  Status(this.elapsedTime, this.long, this.short);

  Status.fromJson(Map<String, dynamic> parsedJson) {
    this.elapsedTime = parsedJson['elapsed'];
    this.long = parsedJson['long'];
    this.short = parsedJson['short'];
  }
}
