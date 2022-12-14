import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Screens/Parametres.dart';
import 'package:test/Screens/profil.dart';
import 'package:test/Screens/signUP.dart';

import 'Accueil.dart';
import 'Auth.dart';

class ListeEmp extends StatefulWidget {
  const ListeEmp({Key? key}) : super(key: key);

  @override
  State<ListeEmp> createState() => _ListeEmpState();
}

class _ListeEmpState extends State<ListeEmp> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body:
        Column(children: [
          SizedBox(
            height: h * 0.05,
            width: w * 0.08,
          ),
          Row(children: [
            Image.asset(
              "images/fleche.png",
              width: 50,
            ),
            SizedBox(
              width: 0.07 * w,
            ),
            Image.asset(
              "images/lg.png",
              width: 80,
            ),
            Text(
              " Plomberie",
              style: GoogleFonts.adventPro(
                  fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ]),
          SizedBox(
            height: h * 0.05,
          ),
          Scrollbar(
              child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(2),
                  children: <Widget>[
                Container(
                  height: h * 0.14,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.lightBlueAccent)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 0.02 * w,
                          ),
                          Image.asset(
                            "images/free-user-icon-295-thumb.png",
                            width: 70,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                  " Nouhaila Ziyane",
                                  style: GoogleFonts.abrilFatface(
                                      fontSize: 23,
                                      color: Colors.lightBlueAccent),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Text("info sur le compte")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: h * 0.05,
                            width: w * 0.19,
                          ),
                          Image.asset(
                            "images/fav.png",
                            width: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]))
        ]),
    );
  }
}
