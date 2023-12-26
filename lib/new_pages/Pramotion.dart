import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PromotionPage(),
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
    );
  }
}

class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> with SingleTickerProviderStateMixin {
  bool isPromotionClaimed = false;
  double rating = 0.0;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  void _showClaimedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Thank You!')),
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          content: Container(
            width: 300,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Thank you for claiming the promotion!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        title: Text(
          'Promotion Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200], // Set the desired background color
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/images/logo.png',
              width: 250,
              height: 250,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: _animation,
                  child: Text(
                    'Special Offer Just for You!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                ScaleTransition(
                  scale: _animation,
                  child: Text(
                    'Grab this special opportunity now!',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isPromotionClaimed = true;
                    });
                    // Add your promotion claiming logic here

                    // Assuming you want to give a 5-star rating
                    rating = 5.0;

                    // Show the claimed dialog
                    _showClaimedDialog();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  child: Container(
                    height: 30, // Set the desired button height
                    width: 150, // Set the desired button width
                    child: Center(
                      child: Text(
                        'Claim Promotion',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                if (isPromotionClaimed)
                  Column(
                    children: [
                      SizedBox(height: 20),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
