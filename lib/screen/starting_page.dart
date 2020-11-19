import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
            Center(
              child: Text(
                  "Size : ${deviceInfo.size.width} \nOreintation : ${deviceInfo.orientation} \n ",
                  style: GoogleFonts.tajawal(
                      textStyle: TextStyle(
                          color: Colors.greenAccent, letterSpacing: 2.0))),
            ),
          ],
        ),
        minimum: EdgeInsets.zero,
      ),
    );
  }
}
