import 'package:seiyuuapp/model/seiyuu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSeiyuu extends StatefulWidget {
  final Seiyuu seiyuu;
  DetailSeiyuu(this.seiyuu);
  @override
  _DetailSeiyuuState createState() => _DetailSeiyuuState();
}

class _DetailSeiyuuState extends State<DetailSeiyuu> {
  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Seiyuu"),
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
                  widget.seiyuu.photo,
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
                      widget.seiyuu.name,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.seiyuu.alias,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.seiyuu.birth,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.seiyuu.placebirth,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.seiyuu.height,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    Text(
                      widget.seiyuu.goldar,
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
                      '${widget.seiyuu.minibio}',
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