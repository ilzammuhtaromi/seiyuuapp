import 'package:seiyuuapp/halaman/detailseiyuu.dart';
import 'package:seiyuuapp/halaman/detailchara.dart';
import 'package:seiyuuapp/halaman/home.dart';
import 'package:seiyuuapp/halaman/homeseiyuu.dart';
import 'package:seiyuuapp/halaman/splash.dart';
import 'package:seiyuuapp/model/seiyuu_provider.dart';
import 'package:seiyuuapp/model/chara_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(SeiyuuApp());
}

class SeiyuuApp extends StatelessWidget {
  // const BatmanApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CharaProvider>(
          create: (context) => CharaProvider(),
        ),
        ChangeNotifierProvider<SeiyuuProvider>(
          create: (context) => SeiyuuProvider(),
        )      
      ],
      child: MaterialApp(
        title: 'Seiyuu APP',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Splash(),
        },
      ),
    );
  }
}
