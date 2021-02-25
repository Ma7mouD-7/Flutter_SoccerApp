import 'package:flutter/material.dart';
import 'package:soccer/widgets/goalStat.dart';
import 'package:soccer/widgets/matchItem.dart';
import 'package:soccer/widgets/teamStat.dart';
import '../models/matchModel.dart';

int pos = 0;

Widget body(List<MatchModel> matches) {
  return Column(
    children: [
      Expanded(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStat(
                    'Home', matches[pos].home.logo, matches[pos].home.name),
                goalStat(matches[pos].fixture.status.elapsedTime,
                    matches[pos].goal.home, matches[pos].goal.away),
                teamStat(
                    'Away', matches[pos].away.logo, matches[pos].away.name),
              ],
            ),
          ),
        ),
        flex: 2,
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 0),
                )
              ]),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'MATCHES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: matches.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          pos = index;
                        },
                        child: matchItem(matches[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
