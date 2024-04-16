import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management/admin_dashboard_screen.dart';
import 'package:hotel_management/admin_login_screen.dart';
import 'package:hotel_management/firebase_options.dart';
import 'package:hotel_management/user_login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(HotelManagementApp());
}


class HotelManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: AuthenticationScreen(),
    );
  }
}

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // For demonstration purposes, assume the user is not authenticated
    bool isAuthenticated = false;

    // If user is not authenticated, show login screens
    if (!isAuthenticated) {
      return Scaffold(
        backgroundColor: Colors.grey[200], // Set background color
        appBar: AppBar(
          backgroundColor: Colors.blue, // Set app bar background color
          title: Text('Hotel Management App'),
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/hotel_image.jpg', // Replace this with your image asset path
                    width: 300,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to Hotel Management App',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminLoginScreen()),
                      );
                    },
                    child: Text('Login as Admin'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserLoginScreen()),
                      );
                    },
                    child: Text('Login as User'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    // If user is authenticated, show appropriate dashboard screen
    return AdminDashboardScreen(); // Return appropriate dashboard based on user role
  }
}
