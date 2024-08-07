import 'package:flutter/material.dart';
import 'package:trendmaster/new_pages/company_registration.dart';
import 'package:trendmaster/new_pages/creator_registration.dart';


class UsertypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),

            Center(
              child: Text(
                'Choose Your',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 0),

            Center(
              child: Text(
                'Registration Type',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 0),

            Text(
              'Collaborate for Success!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 18,
              ),
            ),
            SizedBox(height: 60),

            // Button One Section
            Container(
              width: MediaQuery.of(context).size.width * 0.9, // Set the desired width (80% of screen width in this example)
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [Colors.teal.shade600, Colors.teal.shade300],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreatorRegistration(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/undraw_Influencer_re_1fkb.png',
                            width: 80,
                            height: 75,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              'I am a Creator',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Unlock opportunities and connect',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Button Two Section
            Container(
              width: MediaQuery.of(context).size.width * 0.9, // Set the desired width (80% of screen width in this example)
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [Colors.teal.shade600, Colors.teal.shade300],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,

                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompanyRegistrationScreen(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/undraw_businessman_e7v0.png',
                            width: 80,
                            height: 75,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              'I am a Business',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Collaborate with top creators',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
