import 'package:flutter/material.dart';
import 'package:trendmaster/pages/login_page.dart';

import 'company_register_page.dart';
import 'creator_registration.dart';

class RegistrationOptionsScreen extends StatelessWidget {
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfluencerRegistrationScreen(),
                  ),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfluencerRegistrationScreen(),
                  ),
                );
              },
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
                color: Colors.purple,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}