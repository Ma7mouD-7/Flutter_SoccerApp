import 'package:flutter/material.dart';

Widget teamStat(String team, String logo, String teamName) {
  return Expanded(
      child: Column(
    children: [
      Text(
        team,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 10),
      Expanded(
          child: Image.network(
        logo,
        width: 55,
      )),
      SizedBox(height: 10),
      Text(
        teamName,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    ],
  ));
}
