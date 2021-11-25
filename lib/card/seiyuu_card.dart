import 'package:seiyuuapp/halaman/detailseiyuu.dart';
import 'package:seiyuuapp/model/seiyuu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeiyuuCard extends StatelessWidget {
  //const ActorCard({ Key? key }) : super(key: key);
  final Seiyuu seiyuu;
  SeiyuuCard(this.seiyuu);

  @override
Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailSeiyuu(seiyuu),
          ),
        );
      },
      child: ListTile(
        title: Row(
          children: [
            SizedBox(
                width: 140,
                child: ClipRRect(
                  child: Image.network(seiyuu.photo),
                  borderRadius: BorderRadius.circular(10),
                )),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      seiyuu.name,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}