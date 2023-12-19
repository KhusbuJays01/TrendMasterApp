import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendmaster/pages/Budget.dart';
import 'package:trendmaster/pages/add_details_page.dart';
import 'package:trendmaster/pages/campaign_Detail_page.dart';
import 'package:trendmaster/pages/company_detail_page.dart';
import 'package:trendmaster/pages/company_home_page.dart';
import 'package:trendmaster/pages/backup_creators_pg.dart';
import 'package:trendmaster/pages/company_location.dart';
import 'package:trendmaster/pages/company_review_page.dart';
import 'package:trendmaster/pages/company_susccess_page.dart';
import 'package:trendmaster/pages/creators_page.dart';
import 'package:trendmaster/pages/influencer_home_page.dart';
import 'package:trendmaster/pages/influencer_profile_page.dart';
import 'package:trendmaster/pages/login_page.dart';
import 'package:trendmaster/pages/notification_page_of_influencer.dart';
import 'package:trendmaster/pages/welcome_page.dart';

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


          // "/": (context) => RegistrationOptionsScreen(),
          // "/": (context) => CreatorsPage(),
          // "/": (context) => CompanyHomePage(),
          // "/": (context) => InfluencerProfile(),
          // "/": (context) => InfluencerHomePage(),
          // "/": (context) => Budget(),
          // "/": (context) => LoginPage(),
          // "/": (context) => AddDetailsPage(),
          // "/": (context) => CompanyLocationPage(),
          // "/": (context) => CompanySuccessPage(),
          // "/": (context) => InfluencerHomePage(),
          // "/": (context) => CampaignDetailPage(),
          //   "/": (context) => CompanyDetailPage(),
          //     "/": (context) => CompanyReviewlPage(),
          "/": (context) => NotificationOfInfluencer(),


        }
    );
  }
}
