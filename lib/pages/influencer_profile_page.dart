import 'package:flutter/material.dart';

class InfluencerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Influencer Profile"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image on the page
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 120,
                    height: 60,
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),

            // Center the Container with name, logo, location, and two Text widgets
            Center(
              child: Container(
                width: 350,
                height: 280,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'Khusbu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),

                    // Row with logo, location, and other details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                          color: Colors.red,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Kathmandu, Nepal ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),

                    SizedBox(height: 8),

                    // Multiline text centered
                    Center(
                      child: Text(
                        'I make motivational, news and facts video and my audience are from 15 to 32 age group. '
                            'I guarantee 25k views and will make more videos if it dont reach the target views. ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: 8),

                    // Small container added to the right of the sentence
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Area of Expertise',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SmallContainer(text: 'Motivation'),
                        SmallContainer(text: 'Lifestyle'),
                        SmallContainer(text: 'Education'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // Worked with Companies text aligned to the right and bold
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Worked with Companies',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold, // Make it bold
                    color: Colors.black87,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            // Gallery text
            Text(
              'Gallery',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            // Row with three images on the right side
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message, size: 30, color: Colors.grey),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 30, color: Colors.grey),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30, color: Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class SmallContainer extends StatelessWidget {
  final String text;

  const SmallContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 60,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InfluencerProfile(),
  ));
}
