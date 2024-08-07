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
  // Assuming a common radius value, you can customize this based on your design const double imageRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //App Bar Start
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Column(
            children: [
              // Profile Section
              Container(
                // color: Colors.orange,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40, // Increase the radius as per your design
                      backgroundColor: Colors.cyan,
                      backgroundImage: AssetImage('assets/images/companyProfile.png'),
                    ),

                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 10,
                height: 50, // Increased height
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10), // Added border radius
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: Icon(Icons.search, color: Colors.grey), // Search Icon
                    ),
                    Container(
                      width: 190,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration.collapsed(
                          hintText: "Search a Creator",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Intro Image Swipe Section
              Container(
                color: Colors.red,
                height: 180,

                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(images[index], fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              SizedBox(height: 10),

              //Category Title Section
              Container(
                child: Text(
                  'Categories', // Add the location here
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 10),

              //Category ListView Section
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Motivation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Lifestyle',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Education',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Fashion',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              //Creator Title Section
              Text(
                'Creators', // Add the location here
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              Center(
                child: Column(
                  children: [

                    // Particular Creators Container
                    Container(
                      height: 150,
                      width: 350,
                      color: Color(0xFFD2EBE7),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),

                            //Image of Creator
                            child: Container(
                              color: Colors.white,
                              height: 110,
                              width: 100,

                              child:
                              Image.asset('assets/images/foodie_nepal.jpg'),),
                          ),
                          SizedBox(width: 10,),

                          //Details of Creators
                          Container(
                            // color: Colors.white,
                            height: 130,
                            width: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align the text horizontally to the start
                              children: [

                                // Creators Niche
                                Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.teal),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Food", style: TextStyle(fontSize:12, color: Colors.white),),
                                    )),
                                SizedBox(height: 2,),

                                // Creators Name
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mr. Foodie Nepal"),
                                      SizedBox(height: 5,),

                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("232K", style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("350K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("190K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),

                                      Container(
                                        child: Text("Rs.30,000 for 50.0K impressions", style: TextStyle(fontSize: 13),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    //Dummy Code For Testing

                    Container(
                      height: 150,
                      width: 350,
                      color: Color(0xFFD2EBE7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),

                            //Image of Creator
                            child: Container(
                              color: Colors.white,
                              height: 110,
                              width: 100,

                              child:
                              Image.asset('assets/images/foodie_nepal.jpg'),),
                          ),
                          SizedBox(width: 10,),

                          //Details of Creators
                          Container(
                            // color: Colors.white,
                            height: 130,
                            width: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align the text horizontally to the start
                              children: [

                                // Creators Niche
                                Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.teal),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Food", style: TextStyle(fontSize:12, color: Colors.white),),
                                    )),
                                SizedBox(height: 2,),

                                // Creators Name
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mr. Foodie Nepal"),
                                      SizedBox(height: 5,),

                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("232K", style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("350K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("190K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),

                                      Container(
                                        child: Text("Rs.30,000 for 50.0K impressions", style: TextStyle(fontSize: 13),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Container(
                      height: 150,
                      width: 350,
                      color: Color(0xFFD2EBE7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),

                            //Image of Creator
                            child: Container(
                              color: Colors.white,
                              height: 110,
                              width: 100,

                              child:
                              Image.asset('assets/images/foodie_nepal.jpg'),),
                          ),
                          SizedBox(width: 10,),

                          //Details of Creators
                          Container(
                            // color: Colors.white,
                            height: 130,
                            width: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align the text horizontally to the start
                              children: [

                                // Creators Niche
                                Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.teal),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Food", style: TextStyle(fontSize:12, color: Colors.white),),
                                    )),
                                SizedBox(height: 2,),

                                // Creators Name
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mr. Foodie Nepal"),
                                      SizedBox(height: 5,),

                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("232K", style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("350K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("190K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),

                                      Container(
                                        child: Text("Rs.30,000 for 50.0K impressions", style: TextStyle(fontSize: 13),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Container(
                      height: 150,
                      width: 350,
                      color: Color(0xFFD2EBE7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),

                            //Image of Creator
                            child: Container(
                              color: Colors.white,
                              height: 110,
                              width: 100,

                              child:
                              Image.asset('assets/images/foodie_nepal.jpg'),),
                          ),
                          SizedBox(width: 10,),

                          //Details of Creators
                          Container(
                            // color: Colors.white,
                            height: 130,
                            width: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align the text horizontally to the start
                              children: [

                                // Creators Niche
                                Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.teal),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Food", style: TextStyle(fontSize:12, color: Colors.white),),
                                    )),
                                SizedBox(height: 2,),

                                // Creators Name
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mr. Foodie Nepal"),
                                      SizedBox(height: 5,),

                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("232K", style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("350K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("190K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),

                                      Container(
                                        child: Text("Rs.30,000 for 50.0K impressions", style: TextStyle(fontSize: 13),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Container(
                      height: 150,
                      width: 350,
                      color: Color(0xFFD2EBE7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),

                            //Image of Creator
                            child: Container(
                              color: Colors.white,
                              height: 110,
                              width: 100,

                              child:
                              Image.asset('assets/images/foodie_nepal.jpg'),),
                          ),
                          SizedBox(width: 10,),

                          //Details of Creators
                          Container(
                            // color: Colors.white,
                            height: 130,
                            width: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align the text horizontally to the start
                              children: [

                                // Creators Niche
                                Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.teal),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Food", style: TextStyle(fontSize:12, color: Colors.white),),
                                    )),
                                SizedBox(height: 2,),

                                // Creators Name
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mr. Foodie Nepal"),
                                      SizedBox(height: 5,),

                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("232K", style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("350K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          SizedBox(width: 8,),

                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/foodie_nepal.jpg',
                                                fit: BoxFit.cover,
                                                height: 25,
                                                width: 25,
                                              ),
                                              SizedBox(height: 5,),
                                              Text("190K",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),

                                      Container(
                                        child: Text("Rs.30,000 for 50.0K impressions", style: TextStyle(fontSize: 13),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),



                  ],
                ),
              ),
            ],
          ),
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
