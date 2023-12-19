import 'package:flutter/material.dart';

class InfluencerRegistrationScreen extends StatefulWidget {
  @override
  _InfluencerRegistrationScreenState createState() =>
      _InfluencerRegistrationScreenState();
}

class _InfluencerRegistrationScreenState
    extends State<InfluencerRegistrationScreen> {
  DateTime? selectedDate;
  String? selectedGender;


  List<String> selectedNiches = [];

  List<Map<String, dynamic>> getNicheList() {
    return [
      {'niche': 'Fashion', 'color': Colors.teal},
      {'niche': 'Motivate', 'color': Colors.teal},
      {'niche': 'Food Vlog', 'color': Colors.teal},
      {'niche': 'Entertainment', 'color': Colors.teal},
      {'niche': 'Informative', 'color': Colors.teal},
      {'niche': 'Makeup', 'color': Colors.teal},
      {'niche': 'Content Creator', 'color': Colors.teal},
      {'niche': 'Model', 'color': Colors.teal},
      {'niche': 'Comedy', 'color': Colors.teal},
    ];
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController(); // Added password controller
  TextEditingController instagramController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();
  TextEditingController otherProfilesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Influencer Registration'),
        backgroundColor: Colors.red, // Change the app bar background color to red
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: 20),
              Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: middleNameController,
                decoration: InputDecoration(
                  labelText: 'Middle Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: lastNameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Address',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              // Text(
              //   'Date of Birth',
              //   style: TextStyle(
              //     fontSize: 18,
              //   ),
              // ),
              // InkWell(
              //   onTap: () async {
              //     final DateTime? picked = await showDatePicker(
              //       context: context,
              //       initialDate: DateTime.now(),
              //       firstDate: DateTime(1900),
              //       lastDate: DateTime.now(),
              //     );
              //     if (picked != null) {
              //       setState(() {
              //         selectedDate = picked;
              //       });
              //     }
              //   },
              //   child: InputDecorator(
              //     decoration: InputDecoration(
              //       hintText: 'Select Date',
              //       border: OutlineInputBorder(),
              //     ),
              //     child: selectedDate != null
              //         ? Text(
              //       "${selectedDate!.toLocal()}".split(' ')[0],
              //       style: TextStyle(
              //         fontSize: 18,
              //       ),
              //     )
              //         : Text(
              //       'Select Date',
              //       style: TextStyle(
              //         fontSize: 18,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10),
              Text(
                'Gender',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Gender',
                  border: OutlineInputBorder(),
                ),
                value: selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
                items: <String>['Male', 'Female'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Phone',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Password', // Added Password Field
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Social Media Profiles',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: instagramController,
                decoration: InputDecoration(
                  labelText: 'Instagram Handle',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: youtubeController,
                decoration: InputDecoration(
                  labelText: 'YouTube Channel (if applicable)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: otherProfilesController,
                decoration: InputDecoration(
                  labelText: 'Other relevant social media profiles',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              //Rate Section
              Text(
                'Rate per content',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: otherProfilesController,
                decoration: InputDecoration(
                  labelText: 'Rate',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),


              Text(
                'Niche/Category',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              // Select Niche Section
              Text(
                'Select Niche*',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: getNicheList().map((location) {
                      return OutlinedButton(
                        onPressed: () {
                          setState(() {
                            selectedNiches.contains(location['niche'])
                                ? selectedNiches.remove(location['niche'])
                                : selectedNiches.add(location['niche']);
                          });
                        },
                        child: Text(
                          location['niche'],
                          style: TextStyle(
                            color: selectedNiches.contains(location['niche']) ? Colors.white : location['color'],
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: selectedNiches.contains(location['niche']) ? location['color'] : null,
                          backgroundColor: selectedNiches.contains(location['niche']) ? location['color'] : null,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement the registration logic here.
                    // You can access the entered data using the controller.text properties.
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Set button color to red
                    minimumSize: Size(150, 50), // Set button size
                  ),
                  child: Text(
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
    );
  }
}