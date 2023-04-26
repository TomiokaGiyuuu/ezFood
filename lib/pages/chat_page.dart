import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const  Color(0xff282B30),
        body:
        Container(
          margin: const EdgeInsets.all(10.0),
            color: const Color.fromARGB(255, 52, 56, 63),
            child: SizedBox(
              child: Row(
                children:[
                  Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image.asset('lib/images/profileImg.png'),
                      ),
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
                ],
              ),
            )
        ),

    );
  }
}