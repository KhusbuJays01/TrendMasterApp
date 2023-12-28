import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../model/user_model.dart';
import 'company_homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CompanyRegistrationScreen extends StatefulWidget {
  @override
  _CompanyRegistrationScreenState createState() =>
      _CompanyRegistrationScreenState();
}

class _CompanyRegistrationScreenState extends State<CompanyRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController companyNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController linkedinController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  Widget companyInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          'Company Information',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: companyNameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Company Name';
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Company Name',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: addressController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Address';
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Address',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: emailController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Email';
            }
            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
              return 'Invalid email format';
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: phoneController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Phone Number';
            }
            if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
              return 'Invalid phone number';
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: passwordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Password';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters long';
            }
            return null;
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          controller: confirmPasswordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please confirm Password';
            }
            if (value != passwordController.text) {
              return 'Passwords do not match';
            }
            return null;
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget onlinePresence() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          'Company Online Presence',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: websiteController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Website URL';
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Website URL',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget socialMediaProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Social Media Profiles (if applicable)',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: facebookController,
          validator: (value) {
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Company Facebook Profile',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: twitterController,
          validator: (value) {
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Company Twitter Profile',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: linkedinController,
          validator: (value) {
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Company LinkedIn Profile',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget buildDescription() {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Description',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: descriptionController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please provide a description';
            }
            return null;
          },
          maxLines: 3,
          decoration: InputDecoration(
            labelText: 'Tell us about your company',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => postDetailsToFirestore());
    }
  }

  void postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    CompanyModel userModel = CompanyModel(
      email: user!.email,
      uid: user.uid,
      userType: 'Company',
      name: companyNameController.text,
      address: addressController.text,
      phone: phoneController.text,
      website: websiteController.text,
      linkedin: linkedinController.text,
      facebook: facebookController.text,
      twitter: twitterController.text,
      description: descriptionController.text,
    );

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());

    Fluttertoast.showToast(msg: "Account Created Successfully!");

    Navigator.pushAndRemoveUntil(
      (context),
      MaterialPageRoute(builder: (context) => CompanyHomePage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Registration'),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: <Widget>[
                companyInformation(),
                onlinePresence(),
                socialMediaProfile(),
                buildDescription(),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      signUp(emailController.text, passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      minimumSize: Size(150, 50),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
