import 'package:flutter/material.dart';

class CreatorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(" Test Creators For You")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              background: Colors.red;
              width: 350,
              height: 35,
              // color: Colors.grey,
              color: Color(0xFFD9D9D9),
              child: Row(
                children: [
                  Text("hi"),
                  SizedBox(width: 40),
                  Container(
                    width: 150,
                    height: 20,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration.collapsed(
                        hintText: "Search a Creator",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Blue container
            Center(
              // color: Colors.blue,
              child: Column(
                children: [
                  // Red container inside the blue container
                  Container(
                    height: 130,
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
                            // color: Colors.white,
                            height: 110,
                            width: 100,
                            child:
                            Image.asset('assets/images/foodie_nepal.jpg'),),
                        ),
                        SizedBox(width: 10,),

                        //Details of Creators
                        Container(
                          // color: Colors.white,
                          height: 110,
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
                    height: 130,
                    width: 350,
                    // color: Colors.red,
                    color: Color(0xFFD2EBE7),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),

                          //Image of Creator
                          child: Container(
                            // color: Colors.white,
                            height: 110,
                            width: 100,
                            child:
                            Image.asset('assets/images/foodie_nepal.jpg'),),
                        ),
                        SizedBox(width: 10,),

                        //Details of Creators
                        Container(
                          // color: Colors.white,
                          height: 110,
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
                  ), // Add more
                  SizedBox(height: 5,),

                  Container(
                    height: 130,
                    width: 350,
                    // color: Colors.red,
                    color: Color(0xFFD2EBE7),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),

                          //Image of Creator
                          child: Container(
                            // color: Colors.white,
                            height: 110,
                            width: 100,
                            child:
                            Image.asset('assets/images/foodie_nepal.jpg'),),
                        ),
                        SizedBox(width: 10,),

                        //Details of Creators
                        Container(
                          // color: Colors.white,
                          height: 110,
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
                  ), // Add more
                  SizedBox(height: 5,),

                  Container(
                    height: 130,
                    width: 350,
                    // color: Colors.red,
                    color: Color(0xFFD2EBE7),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center, // Align vertically to the center
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),

                          //Image of Creator
                          child: Container(
                            // color: Colors.white,
                            height: 110,
                            width: 100,
                            child:
                            Image.asset('assets/images/foodie_nepal.jpg'),),
                        ),
                        SizedBox(width: 10,),

                        //Details of Creators
                        Container(
                          // color: Colors.white,
                          height: 110,
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
                  ), // Add more
                  SizedBox(height: 5,),

// widgets inside the blue container if needed
                  Container(
                    height: 130,
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
                            // color: Colors.white,
                            height: 110,
                            width: 100,
                            child:
                            Image.asset('assets/images/foodie_nepal.jpg'),),
                        ),
                        SizedBox(width: 10,),

                        //Details of Creators
                        Container(
                          // color: Colors.white,
                          height: 110,
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
                  ), // Add more wi
                  SizedBox(height: 5,),
// dgets inside the blue container if needed
                  Container(
                    height: 130,
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
                            // color: Colors.white,
                            height: 110,
                            width: 100,
                            child:
                            Image.asset('assets/images/foodie_nepal.jpg'),),
                        ),
                        SizedBox(width: 10,),

                        //Details of Creators
                        Container(
                          // color: Colors.white,
                          height: 110,
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
                  ), // A
                  SizedBox(height: 5,),
                  Container(
                    height: 130,
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
                            // color: Colors.white,
                            height: 110,
                            width: 100,
                            child:
                            Image.asset('assets/images/foodie_nepal.jpg'),),
                        ),
                        SizedBox(width: 10,),

                        //Details of Creators
                        Container(
                          // color: Colors.white,
                          height: 110,
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
                  ), // A
// dd more widgets inside the blue container if needed
// Add more widgets inside the blue container if needed


                  // Add more widgets inside the blue container if needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
