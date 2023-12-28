import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trendmaster/pages/login_page.dart';

import 'company_register_page.dart';
import 'creator_registration.dart';

class RegistrationOptionsScreenforgoogle extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _handleGoogleSignIn(BuildContext context, String userType) async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        // User is signed in, add your logic here
        print("Google Sign-In Success: ${googleSignInAccount.displayName}");

        // Navigate to the corresponding registration screen based on the user type
        if (userType == 'Influencer') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfluencerRegistrationScreen(),
            ),
          );
        } else if (userType == 'Company') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompanyRegistrationScreen(),
            ),
          );
        }
      } else {
        // User canceled the Google Sign-In
        print("Google Sign-In Canceled");
      }
    } catch (error) {
      // Handle Google Sign-In error
      print("Google Sign-In Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Registration Options')),
        backgroundColor: Colors.purple, // Set AppBar background color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose Your Account Type',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple, // Set text color
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _handleGoogleSignIn(context, 'Influencer'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                side: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                ),
                padding: EdgeInsets.all(10),
              ),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/influencer_logo.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Influencer',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _handleGoogleSignIn(context, 'Company'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                side: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                ),
                padding: EdgeInsets.all(10),
              ),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/company_logo.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Company',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
