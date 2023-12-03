import 'package:flutter/material.dart';
import 'creators_page.dart';



class LoginPage extends StatelessWidget {
  void onPressed(BuildContext context) {
    // Navigate to the HomePage
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => CreatorsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          // Image Section
          Container(
            child: Image.asset(
              'assets/images/logo.png',
              height: 230,
              fit: BoxFit.contain,
            ),
          ),

          // Text Fields Section
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  // Username Textfield
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Username or Email Address",
                      labelText: "Username or Email",
                    ),
                  ),
                  SizedBox(height: 10),
                  // Password Textfield
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Button Section
          // Login Button
          FractionallySizedBox(
            widthFactor: 0.85,
            child: ElevatedButton(
              onPressed: () => onPressed(context),
              child: Text("Login"),
            ),
          ),

          SizedBox(height: 10),

          Text("Forgotten Password?", style: TextStyle(color: Colors.red)),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              // color: Colors.green,
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
                          onPressed: () => onPressed(context),
                          child: Text("Sign up with Google"),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.97,
                        child: ElevatedButton(
                          onPressed: () => onPressed(context),
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
    );
  }
}
