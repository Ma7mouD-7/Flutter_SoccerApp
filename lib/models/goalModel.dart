class Goal {
  int home;
  int away;

  Goal(this.home, this.away);

  Goal.fromJson(Map<String, dynamic> parsedJson) {
    this.home = parsedJson['home'];
    this.away = parsedJson['away'];
  }
}
