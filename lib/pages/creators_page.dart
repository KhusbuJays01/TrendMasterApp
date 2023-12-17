import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatorsPage extends StatelessWidget {
  static const double containerHeight = 150;
  static const double containerWidth = 350;
  static const double spacing = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Creators For You",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Center the title
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 35,
              color: Color(0xFFD9D9D9),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey), // Search Icon
                  SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 20,
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
            SizedBox(height: 10,),

            Center(
              child: Column(
                children: [
                  CreatorContainer(
                    imageAsset: 'assets/images/foodie_nepal.jpg',
                    niche: "Food",
                    creatorName: "Mr. Foodie Nepal",
                    followerCounts: [100, 350, 190],
                    impressions: "Rs.30,000 for 50.0K impressions",
                  ),
                  SizedBox(height: spacing),

                  // Particular Creators Container 1
                  CreatorContainer(
                    imageAsset: 'assets/images/foodie_nepal.jpg',
                    niche: 'Food',
                    creatorName: 'Mr. Foodie Nepal',
                    followerCounts: [232, 250, 190],
                    impressions: 'Rs.30,000 for 50.0K impressions',
                  ),
                  SizedBox(height: spacing),

                  CreatorContainer(
                    imageAsset: 'assets/images/foodie_nepal.jpg',
                    niche: "Food",
                    creatorName: "Mr. Foodie Nepal",
                    followerCounts: [232, 350, 190],
                    impressions: "Rs.30,000 for 50.0K impressions",
                  ),
                  SizedBox(height: spacing),

                  // Particular Creators Container 1
                  CreatorContainer(
                    imageAsset: 'assets/images/foodie_nepal.jpg',
                    niche: 'Food',
                    creatorName: 'Mr. Foodie Nepal',
                    followerCounts: [232, 350, 190],
                    impressions: 'Rs.30,000 for 50.0K impressions',
                  ),
                  SizedBox(height: spacing),

                  CreatorContainer(
                    imageAsset: 'assets/images/foodie_nepal.jpg',
                    niche: "Food",
                    creatorName: "Mr. Foodie Nepal",
                    followerCounts: [232, 350, 190],
                    impressions: "Rs.30,000 for 50.0K impressions",
                  ),
                  SizedBox(height: spacing),

                  // Particular Creators Container 1
                  CreatorContainer(
                    imageAsset: 'assets/images/foodie_nepal.jpg',
                    niche: 'Food',
                    creatorName: 'Mr. Foodie Nepal',
                    followerCounts: [232, 350, 190],
                    impressions: 'Rs.30,000 for 50.0K impressions',
                  ),
                  SizedBox(height: spacing),
                ],
              ),
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



class CreatorContainer extends StatelessWidget {
  final String imageAsset;
  final String niche;
  final String creatorName;
  final List<int> followerCounts;
  final String impressions;

  const CreatorContainer({
    required this.imageAsset,
    required this.niche,
    required this.creatorName,
    required this.followerCounts,
    required this.impressions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: CreatorsPage.containerHeight,
      width: CreatorsPage.containerWidth,
      color: Color(0xFFD2EBE7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              color: Colors.white,
              height: 110,
              width: 100,
              child: Image.asset(imageAsset),
            ),
          ),
          SizedBox(width: 10,),

          Container(
            height: 130,
            width: 210,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.teal,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(niche, style: TextStyle(fontSize: 12, color: Colors.white)),
                  ),
                ),
                SizedBox(height: 2,),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(creatorName),
                      SizedBox(height: 5,),

                      Row(
                        children: [
                          for (var count in followerCounts)
                            Column(
                              children: [
                                Image.asset(
                                  imageAsset,
                                  fit: BoxFit.cover,
                                  height: 25,
                                  width: 25,
                                ),
                                SizedBox(height: 5,),
                                Text("$count K ", style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          SizedBox(width: 8),
                        ],
                      ),
                      SizedBox(height: 5,),

                      Container(
                        child: Text(impressions, style: TextStyle(fontSize: 13)),
                      ),
                    ],
                  ),


                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

