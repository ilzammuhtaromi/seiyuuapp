import 'package:seiyuuapp/model/chara.dart';
import 'package:seiyuuapp/model/seiyuu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailChara extends StatefulWidget {
  // const DetailChara({ Key? key }) : super(key: key);
  final Chara chara;
  DetailChara(this.chara);
  @override
  _DetailCharastate createState() => _DetailCharastate();
}

class _DetailCharastate extends State<DetailChara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Most Favorite Character"),
        backgroundColor: Colors.blue[400],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 200,
                height: 280,
                child: Image.network(
                  widget.chara.poster,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.chara.nama,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Score: ${widget.chara.voting}',
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    // Text(
                    //   'Broadcast : ${widget.batman.}',
                    //   style: GoogleFonts.poppins(color: Colors.grey[600]),
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${widget.chara.description}',
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
