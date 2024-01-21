import 'package:flutter/material.dart';

void main() {
  runApp(CompleteProfileScreen());
}

class CompleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView( // Use SingleChildScrollView to make the content scrollable
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Complete your profile',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // Provides spacing between text and profile picture

              CircleAvatar(
                radius: 50, // Size of the profile picture
                backgroundImage: AssetImage('assets/profile_picture.jpg'), // Replace with your profile picture asset
              ),
              SizedBox(height: 8),
              Text('Michael Jackson', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 30), // Spacing between name and text fields

              // List of TextFields for profile details
              TextField(
                decoration: InputDecoration(
                  labelText: 'tech stack',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'type of mentor',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'topics',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'country',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30), // Spacing before the continue button

              // Continue Button
              ElevatedButton(
                child: Text('Continue', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Implement continue action
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
