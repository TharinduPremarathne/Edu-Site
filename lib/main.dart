import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular logo with icon
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.wallet, // Replace this with your custom icon or image
                color: Colors.deepOrange,
                size: 60.0,
              ),
            ),
            SizedBox(height: 10.0), // Space between logo and spinner
            // Loading spinner
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}
