import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendmaster/pages/company_home_page.dart';
import 'package:trendmaster/pages/backup_creators_pg.dart';
import 'package:trendmaster/pages/creators_page.dart';
import 'package:trendmaster/pages/influencer_home_page.dart';
import 'package:trendmaster/pages/influencer_profile_page.dart';
import 'package:trendmaster/pages/login_page.dart';

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
          appBarTheme: AppBarTheme(
            color: Colors.teal,


          ),
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
        ),

        debugShowCheckedModeBanner: false,

        routes: {
          // "/": (context) => LoginPage(),
          // "/": (context) => HomePage(),
          // "/": (context) => CreatorsPage(),
          // "/": (context) => CompanyHomePage(),

          // "/": (context) => InfluencerProfile(),
          //    "/": (context) => LoginPage(),
        }
    );
  }
}
