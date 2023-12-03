import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendmaster/pages/home_page.dart';
import 'package:trendmaster/pages/influencer_profile_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
        ),

        debugShowCheckedModeBanner: false,

        routes: {
          // "/": (context) => LoginPage(),
          // "/": (context) => HomePage(),
          // "/": (context) => CreatorPage(),
          "/": (context) => InfluencerProfile(),
        }
    );
  }
}
