import 'package:seiyuuapp/card/seiyuu_card.dart';
import 'package:seiyuuapp/model/seiyuu.dart';
import 'package:seiyuuapp/model/seiyuu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeChara extends StatefulWidget {

  @override
  _HomeSeiyuuState createState() => _HomeSeiyuuState();
}

class _HomeSeiyuuState extends State<HomeChara> {
  @override
  Widget build(BuildContext context) {
    var actorProvider = Provider.of<SeiyuuProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text ("My Top Seiyuu"),
        backgroundColor: Colors.blue[400],
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: actorProvider.getRecommendedAct(),
            builder: (context, snapshot){
              if (snapshot.hasData){
                List<Seiyuu> data = snapshot.data;
                return Column(
                  children: data.map((item){
                    return Container(
                      child: SeiyuuCard(item),
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