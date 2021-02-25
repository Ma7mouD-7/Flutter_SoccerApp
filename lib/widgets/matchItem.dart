import 'package:flutter/material.dart';
import 'package:soccer/models/matchModel.dart';

Widget matchItem(MatchModel match) {
  bool nullHome = (match.goal.home == null) ? true : false;
  bool nullAway = (match.goal.away == null) ? true : false;
  String home = (nullHome) ? '0' : '${match.goal.home}';
  String away = (nullAway) ? '0' : '${match.goal.away}';
  return Card(
    color: Colors.white,
    elevation: 3,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              match.home.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Image.network(
            match.home.logo,
            width: 36,
          ),
          Expanded(
            child: Text(
              '$home - $away',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Image.network(
            match.away.logo,
            width: 36,
          ),
          Expanded(
            child: Text(
              match.away.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
