import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendmaster/pages/Budget.dart';
import 'package:trendmaster/pages/add_details_page.dart';
import 'package:trendmaster/pages/campaign_Detail_page.dart';
import 'package:trendmaster/pages/company_detail_page.dart';
import 'package:trendmaster/pages/company_home_page.dart';
import 'package:trendmaster/pages/backup_creators_pg.dart';
import 'package:trendmaster/pages/company_location.dart';
import 'package:trendmaster/pages/company_susccess_page.dart';
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
        debugShowCheckedModeBanner: false,

        //Theme Style
        themeMode: ThemeMode.light,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.teal,
              titleTextStyle: TextStyle(fontSize: 22, color: Colors.white,)),
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
        ),

        //Route
        routes: <String, WidgetBuilder>{


          // "/": (context) => LoginPage(),
          // "/": (context) => CreatorsPage(),
          // "/": (context) => CompanyHomePage(),
          // "/": (context) => InfluencerProfile(),
          // "/": (context) => InfluencerHomePage(),
          // "/": (context) => Budget(),
          //    "/": (context) => LoginPage(),
          // "/": (context) => AddDetailsPage(),
          // "/": (context) => CompanyHomePage(),
          // "/": (context) => CompanyLocationPage(),
          // "/": (context) => CompanySuccessPage(),
          // "/": (context) => CreatorsPage(),
          // "/": (context) => InfluencerHomePage(),
          // "/": (context) => InfluencerProfile(),
          // "/": (context) => CampaignDetailPage(),
            "/": (context) => CompanyDetailPage(),

        }
    );
  }
}
