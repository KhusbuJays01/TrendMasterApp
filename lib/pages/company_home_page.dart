import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  final String text;

  const SmallContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CompanyHomePage extends StatelessWidget {
  final List<String> images = [
    'assets/images/company_h1.png',
    'assets/images/company_h1.png',
    'assets/images/company_h1.png',
    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //App Bar Start
      appBar: AppBar(
        title: Text("Khusbu Jaiswal"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [


            //Search Bar Start
            Container(

              height: 35,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFFC2BDBD),),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration.collapsed(
                        hintText: "Search a Creator",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            // Profile Section
            Container(
              color: Colors.orange,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/companyProfile.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Khusbu Jaiswal',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),


            Container(

              color: Colors.red,
              height: 180,

              // width: 450,
              child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.cover,
                  );
                },
              ),
            ),
            SizedBox(height: 8),

            //Category Section
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Categories', // Add the location here
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  // textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SmallContainer(text: 'Motivation'),
                  SizedBox(width: 20),
                  SmallContainer(text: 'Lifestyle'),
                  SizedBox(width: 20),
                  SmallContainer(text: 'Education'),
                  SizedBox(width: 20),
                  SmallContainer(text: 'Fashion'),

                ],
              ),
            ),

            SizedBox(height: 10),
            Text(
              'Creators', // Add the location here
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
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
