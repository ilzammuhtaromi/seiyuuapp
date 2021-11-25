import 'package:seiyuuapp/card/chara_card.dart';
import 'package:seiyuuapp/model/chara.dart';
import 'package:seiyuuapp/model/chara_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var charaProvider = Provider.of<CharaProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Most Favorite Character"),
        backgroundColor: Colors.blue[400],
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: charaProvider.getRecommendedMov(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Chara> data = snapshot.data;
                return Column(
                  children: data.map((item) {
                    return Container(
                      child: Characard(item),
                    );
                  }).toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )
        ],
      ),
    );
  }
}
