import 'dart:convert';
import 'package:seiyuuapp/model/chara.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CharaProvider extends ChangeNotifier {
  getRecommendedMov() async {
    var result = await http.get(Uri.parse(
        'https://my-json-server.typicode.com/ilzammuhtaromi/apichara/Search'));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Chara> sites = data.map((item) => Chara.fromJson(item)).toList();
      return sites;
    } else {
      return <Chara>[];
    }
  }
}
