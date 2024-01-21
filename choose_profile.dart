import 'package:flutter/material.dart';

void main() {
  runApp(ProfileTypeScreen());
}

class ProfileTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose your profile type',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40), // Provides spacing between text and buttons

              // 'I am a Mentor' button
              ElevatedButton(
                child: Text('I am a Mentor', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Implement 'I am a Mentor' action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[100], // Button color
                  onPrimary: Colors.black, // Text color
                  minimumSize: Size(double.infinity, 50), // Width and height
                ),
              ),
              SizedBox(height: 20), // Spacing between buttons

              // 'I want to learn' button
              ElevatedButton(
                child: Text('I want to learn', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Implement 'I want to learn' action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[100], // Button color
                  onPrimary: Colors.black, // Text color
                  minimumSize: Size(double.infinity, 50), // Width and height
                ),
              ),
              SizedBox(height: 40), // Spacing before the 'Get Started' button

              // 'Get Started' button
              ElevatedButton(
                child: Text('Get Started', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Implement 'Get Started' action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Button color
                  onPrimary: Colors.white, // Text color
                  minimumSize: Size(double.infinity, 50), // Width and height
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
