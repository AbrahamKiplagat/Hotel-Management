import 'package:flutter/material.dart';
import 'package:hotel_management/user_dashboard_screen.dart';
import 'package:hotel_management/user_signup_screen.dart'; // Import the SignUpScreen
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons

class UserLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Set background color of the screen
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set background color of the app bar
        title: Text('User Login'),
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
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement user login logic here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => UserDashboardScreen()),
                      );
                    },
                    child: Text('Login as User'),
                  ),
                ),
                SizedBox(height: 10), // Add spacing between the login button and sign-up link
                TextButton(
                  onPressed: () {
                    // Navigate to the sign-up screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserSignUpScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add), // Add icon
                      SizedBox(width: 5), // Add space between icon and text
                      Text("Don't have an account? Sign up"),
                    ],
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
