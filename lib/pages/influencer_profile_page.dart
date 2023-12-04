import 'package:flutter/material.dart';

class InfluencerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Influencer Profile", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              //Profile Description Section
              Container(
                // height: 400,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [

                    //Profile Image, Name, Location and Edit Option
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        //Image
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            SizedBox(width: 15,),

                            // Influencer name and Location
                            Container(
                                // color: Colors.cyan,
                                child: Column(
                                  children: [
                                    Text("Khusbu Kumari",
                                      style:TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,),),

                                    Container(
                                      // color: Colors.red,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Colors.red,
                                          ),
                                          Text(
                                            'Kathmandu, Nepal ',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),

                        //Replacing it with EDIT LOGO
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.red,
                          ),
                        ),
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
                    SizedBox(height: 2),

                    // Area of Expertise Section
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Text(
                        'Area of Expertise',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text('Motivation'),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text('Lifestyle'),),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),

                    Container(
                      color: Colors.teal[100],
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                        Text("Lets work together", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text("Creators Rate Per Creative: Rs. 5000/-", style: TextStyle(fontSize: 14),)

                      ],),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),

              //Social Media Details Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profile.png'),
                  Image.asset('assets/images/profile.png'),
                  Image.asset('assets/images/profile.png'),
                ],


              ),







              // Row with three images on the right side
            ],
          ),
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
