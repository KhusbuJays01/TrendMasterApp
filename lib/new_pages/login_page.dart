import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trendmaster/new_pages/company_homepage.dart';
import 'package:trendmaster/new_pages/creator_homepage.dart';
import 'package:trendmaster/new_pages/usertype_page.dart';

import 'company_registration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isPasswordVisible = false;

  void onPressed(BuildContext context) {
    signIn(emailController.text, passwordController.text);
  }

  void onPressedSignupType(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => UsertypePage()));
  }

  void onPressedSignupCompany(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => CompanyRegistrationScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/logo.png',
                height: 230,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter Username or Email Address",
                        labelText: "Username or Email",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          child: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            FractionallySizedBox(
              widthFactor: 0.85,
              child: ElevatedButton(
                onPressed: () => onPressed(context),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white),
                child: Text("Login"),
              ),
            ),
            SizedBox(height: 10),
            Text("Forgotten Password?", style: TextStyle(color: Colors.red)),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 330,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text("-OR-", style: TextStyle(fontSize: 20)),
                        SizedBox(height: 20),
                        FractionallySizedBox(
                          widthFactor: 0.97,
                          child: ElevatedButton(
                            onPressed: () => onPressedSignupType(context),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                foregroundColor: Colors.white),
                            child: Text("CREATE NEW ACCOUNT"),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 0.97,
                          child: ElevatedButton(
                            onPressed: () => onPressedSignupCompany(context),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                foregroundColor: Colors.white),
                            child: Text("Sign up with Google"),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 0.97,
                          child: ElevatedButton(
                            onPressed: () => onPressed(context),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                foregroundColor: Colors.white),
                            child: Text("Sign up with Facebook"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        User? user = userCredential.user;

        if (user != null) {
          DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
              .collection('users')
              .doc(user.uid)
              .get();

          if (userSnapshot.exists) {
            String userType = userSnapshot['userType'];

            if (userType == 'Company') {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => CompanyHomePage()),
              );
            } else if (userType == 'Creator') {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => CreatorHomePage()),
              );
            } else {
              Fluttertoast.showToast(msg: 'User details not found');
            }
          }
        }
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    }
  }
}
