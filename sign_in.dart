import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Make sure to add the flutter_svg package to your pubspec.yaml

void main() {
  runApp(SignInScreen());
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo here
              SvgPicture.asset('assets/logo.svg'), // Replace with your logo asset
              Text('Webminds GH', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 40), // Provides spacing between logo and form

              // Username/Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username / email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20), // Spacing between TextFields

              // Password TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),

              // Sign in Button
              ElevatedButton(
                child: Text('Sign in', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Implement sign-in logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // double.infinity is the width and 50 is the height
                ),
              ),
              SizedBox(height: 20), // Spacing before the social buttons

              Text('or', style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 20),

              // Social Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Google sign-in button
                  IconButton(
                    icon: SvgPicture.asset('assets/google_logo.svg'), // Replace with your asset
                    onPressed: () {
                      // Implement Google sign-in logic
                    },
                  ),

                  // LinkedIn sign-in button
                  IconButton(
                    icon: SvgPicture.asset('assets/linkedin_logo.svg'), // Replace with your asset
                    onPressed: () {
                      // Implement LinkedIn sign-in logic
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
