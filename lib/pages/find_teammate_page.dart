import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindTeammate extends StatefulWidget {
  const FindTeammate({super.key});

  @override
  State<FindTeammate> createState() => _FindTeammateState();
}

class _FindTeammateState extends State<FindTeammate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xff282B30),
      body:
      Center(
        child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: Image.asset('lib/images/gta5.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                'Find your Ideal teammate',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    color: Colors.white,
                    fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      )
      )
    );
  }
}