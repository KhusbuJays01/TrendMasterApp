import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trendmaster/new_pages/company_registration.dart';
import 'package:trendmaster/new_pages/creator_registration.dart';

class UsertypePageForGoogle extends StatelessWidget {
  Future<GoogleSignInAccount?> _handleGoogleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

    try {
      return await _googleSignIn.signIn();
    } catch (error) {
      print('Google Sign-In Error: $error');
      return null;
    }
  }

  void setUserType(String userType) {
    // Implement your logic to store the user type
    // You might use a global state management solution or another method.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 70),
            Image.asset(
              'assets/images/logo.png',
              width: 200,
              height: 200,
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

            // Button One Section (For Creator)
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
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
                  onPressed: () async {
                    GoogleSignInAccount? user = await _handleGoogleSignIn();
                    if (user != null) {
                      setUserType("Creator");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreatorRegistration(),
                        ),
                      );
                    }
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

            // Button Two Section (For Company)
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
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
                  onPressed: () async {
                    GoogleSignInAccount? user = await _handleGoogleSignIn();
                    if (user != null) {
                      setUserType("Company");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompanyRegistrationScreen(),
                        ),
                      );
                    }
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