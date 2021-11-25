import 'package:seiyuuapp/halaman/detailchara.dart';
import 'package:seiyuuapp/model/chara.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Characard extends StatelessWidget {
  final Chara chara;
  Characard(this.chara);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailChara(chara),
          ),
        );
      },
      child: ListTile(
        title: Row(
          children: [
            SizedBox(
                width: 140,
                child: ClipRRect(
                  child: Image.network(chara.poster),
                  borderRadius: BorderRadius.circular(10),
                )),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chara.nama,
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
