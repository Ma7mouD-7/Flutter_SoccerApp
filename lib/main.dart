import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soccer/screens/body.dart';
import 'package:soccer/services/httpHelper.dart';

void main() {
  runApp(Soccer());
}

class Soccer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.blue,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  int pos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'SCOREBOARD',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: HttpHelper().getMatch(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return body(snapshot.data);
          } else {
            return Center(
              child: Column(children: [
                CircularProgressIndicator(
                  strokeWidth: 6.0,
                ),
                Text(
                  'Loading....',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                )
              ]),
            );
          }
        },
      ),
    );
  }
}
