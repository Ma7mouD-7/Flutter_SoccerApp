import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/matchModel.dart';

class HttpHelper {
  final String baseUrl = 'https://v3.football.api-sports.io/';
  static const String apiKey = '6d501d5f363b41e15a8643da7b81818c';
  final String fixtures = 'fixtures?';
  final String rounds = 'rounds?';
  final String season = '&season=2020';
  final String current = 'current=true';
  final String date = 'date=2021-02-24';
  final String league = 'league=';
  final String uefacl = '2';
  final String eng = '39';

  static const Headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': apiKey
  };

  Future<List<MatchModel>> getMatch() async {
    http.Response response = await http.get(
        baseUrl +
            fixtures +
            league +
            uefacl +
            '&season=2020' +
            '&' +
            'from=2021-02-02&to=2021-03-16',
        headers: Headers);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      List matchMap = jsonResponse['response'];
      print('ttesssssssssssssst: $jsonResponse');
      List matches = matchMap.map((i) => MatchModel.fromJson(i)).toList();
      return matches;
    } else {
      return null;
    }
  }
}
