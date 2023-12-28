import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendmaster/new_pages/Pramotion.dart';
import 'package:trendmaster/new_pages/company_homepage.dart';
import 'package:trendmaster/new_pages/creator_homepage.dart';
import 'package:trendmaster/new_pages/creator_registration.dart';
import 'package:trendmaster/new_pages/login_page.dart';
import 'package:trendmaster/new_pages/usertype_page.dart';
import 'package:trendmaster/pages/campaign_Detail_page.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
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


          "/": (context) => LoginPage(),
          // "/": (context) => CampaignDetailPage(),
          // "/": (context) => CompanyHomePage(),
          // "/": (context) => CreatorHomePage(),
          // "/": (context) => UsertypePage(),
          // "/": (context) => CreatorRegistration(),
          // "/": (context) => UsertypePage(),
          // "/": (context) => PromotionPage(),





        }
    );
  }
}
