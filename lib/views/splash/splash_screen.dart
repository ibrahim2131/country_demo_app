import 'package:flutter/material.dart';
import '../country_list/country_list_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Start the timer to navigate to the home page after a delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CountryListPage()),
      );    });

    return Scaffold(
      backgroundColor: Colors.grey[50], // Background color of the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ZoneLogo.png', // added photo to assets file
              height: 100,
            ),
            const SizedBox(height: 20),
             Text(
              'Welcome to Country App',
              style: TextStyle(
                color: Colors.red[800],
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}