import 'package:flutter/material.dart';
import 'package:hotel_management/admin_dashboard_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminLoginScreen extends StatefulWidget {
  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _checkForAdminCredentials();
  }

  Future<void> _checkForAdminCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    final String? email = prefs.getString('admin_email');
    final String? password = prefs.getString('admin_password');

    if (email != null && password != null) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AdminDashboardScreen()),
        );
      } catch (e) {
        print('Error checking admin credentials: $e');
      }
    }
  }

  Future<void> _loginAsAdmin() async {
    final String inputEmail = _emailController.text;
    final String inputPassword = _passwordController.text;

    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: inputEmail,
        password: inputPassword,
      );

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('admin_email', inputEmail);
      await prefs.setString('admin_password', inputPassword);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AdminDashboardScreen()),
      );
    } catch (e) {
      setState(() {
        _errorMessage = 'Invalid email or password';
      });
    }
  }

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
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email), // Add icon
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _passwordController,
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
                    onPressed: _loginAsAdmin,
                    child: Text('Login as Admin'),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
