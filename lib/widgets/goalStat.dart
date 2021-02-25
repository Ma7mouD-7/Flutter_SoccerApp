import 'package:flutter/material.dart';

Widget goalStat(int elapsedTime, int homeGoals, int awayGoals) {
  bool nullTime = (elapsedTime == null) ? true : false;
  bool nullHome = (homeGoals == null) ? true : false;
  bool nullAway = (awayGoals == null) ? true : false;
  String time = (nullTime) ? 'Not Started' : '$elapsedTime';
  String home = (nullHome) ? '0' : '$homeGoals';
  String away = (nullAway) ? '0' : '$awayGoals';

  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$time',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
        Expanded(
            child: Center(
          child: Text(
            '$home - $away',
            style: TextStyle(
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
        ))
      ],
    ),
  );
}
