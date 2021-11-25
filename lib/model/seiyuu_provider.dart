import 'dart:convert';
import 'package:seiyuuapp/model/seiyuu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SeiyuuProvider extends ChangeNotifier{
  getRecommendedAct() async{
    var result = await http.get(Uri.parse(
      'https://my-json-server.typicode.com/ilzammuhtaromi/apiseiyuu/profile'));
  
  print(result.statusCode);
  print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Seiyuu> sites = data.map((item) => Seiyuu.fromJson(item)).toList();
      return sites; 
    } else {
      return <Seiyuu>[];
    }
  }
}