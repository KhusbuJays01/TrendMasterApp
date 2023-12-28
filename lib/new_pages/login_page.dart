import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trendmaster/new_pages/company_homepage.dart';
import 'package:trendmaster/new_pages/creator_homepage.dart';
import 'package:trendmaster/new_pages/usertype_page.dart';
import 'package:trendmaster/new_pages/user_type_google.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20),
                _buildForm(),
                SizedBox(height: 20),
                _buildLoginButton(),
                SizedBox(height: 10),
                _buildForgottenPasswordText(),
                SizedBox(height: 30),
                _buildOrDivider(),
                SizedBox(height: 20),
                _buildCreateAccountButton(),
                SizedBox(height: 20),
                _buildSocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildTextField(
            controller: emailController,
            hintText: "Email",
            labelText: "Email",
          ),
          SizedBox(height: 10),
          _buildPasswordField(),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required String labelText,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
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
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () => _handleLogin(context),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 15.0,
        ),
        child: Text("Login"),
      ),
    );
  }

  void _handleForgottenPassword() {
    // Handle Forgotten Password logic here
  }

  Widget _buildForgottenPasswordText() {
    return GestureDetector(
      onTap: _handleForgottenPassword,
      child: Text(
        "Forgotten Password?",
        style: TextStyle(
          color: Colors.red,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget _buildOrDivider() {
    return Text("-OR-", style: TextStyle(fontSize: 20));
  }

  Widget _buildCreateAccountButton() {
    return ElevatedButton(
      onPressed: () => _handleCreateAccount(context),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 15.0,
        ),
        child: Text("CREATE NEW ACCOUNT"),
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocialButton(
          onPressed: () => _handleSignupCompany(context),
          icon: MdiIcons.google,
          color: Colors.teal,
          width: 125.0, // Adjusted width for Google button
        ),
        _buildSocialButton(
          onPressed: () => _handleLogin(context),
          icon: MdiIcons.facebook,
          color: Colors.teal,
          width: 125.0, // Adjusted width for Facebook button
        ),
      ],
    );
  }

  Widget _buildSocialButton({
    required VoidCallback onPressed,
    required IconData icon,
    required Color color,
    required double width,
  }) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.black),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            icon,
            size: 30,
            color: color,
          ),
        ),
      ),
    );
  }

  void _handleLogin(BuildContext context) async {
    signIn(emailController.text, passwordController.text);
  }

  void _handleCreateAccount(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => UsertypePage()),
    );
  }

  void _handleSignupCompany(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => UsertypePageForGoogle()),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential =
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

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
