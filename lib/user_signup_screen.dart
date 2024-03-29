import 'package:flutter/material.dart';
import 'package:hotel_management/user_dashboard_screen.dart'; // Import the user dashboard screen
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons

class UserSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Set background color of the screen
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set background color of the app bar
        title: Text('User Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person), // Add icon
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email/Phone',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email), // Add icon
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true, // Hide password characters
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock), // Add icon
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true, // Hide password characters
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock), // Add icon
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement user sign-up logic here
                      // For demonstration, navigate to the user dashboard screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => UserDashboardScreen()),
                      );
                    },
                    child: Text('Sign Up'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
