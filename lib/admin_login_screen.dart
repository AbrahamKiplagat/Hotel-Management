import 'package:flutter/material.dart';
import 'package:hotel_management/admin_dashboard_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons

class AdminLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Set background color of the screen
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set background color of the app bar
        title: Text('Admin Login'),
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
                      // Implement admin login logic here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => AdminDashboardScreen()),
                      );
                    },
                    child: Text('Login as Admin'),
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
