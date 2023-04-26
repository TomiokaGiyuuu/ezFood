import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const   Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const  Color(0xff282B30),
        body:
        Center(
            child: SizedBox(
              width: 500,
              height: 500,
              child: Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset('lib/images/profileImg.png'),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      'Tomioka',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSerif(
                          color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      'Discord Id: Tomioka#4243',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSerif(
                          color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}