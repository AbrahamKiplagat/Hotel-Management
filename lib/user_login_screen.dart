import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotel_management/user_dashboard_screen.dart';
import 'package:hotel_management/user_signup_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart'; // For handling exceptions

class UserLoginScreen extends StatefulWidget {
  @override
  _UserLoginScreenState createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Email',  // Changed from Username to Email for Firebase Auth
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: _login,
                    child: Text('Login as User'),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserSignUpScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add),
                      SizedBox(width: 5),
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

 void _login() async {
  try {
    final UserCredential user = await _auth.signInWithEmailAndPassword(
      email: _usernameController.text.trim(),
      password: _passwordController.text.trim(),
    );

    if (user.user != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => UserDashboardScreen()),
      );
    }
  } on FirebaseAuthException catch (e) {
    String message = 'Login failed: ';
    switch (e.code) {
      case 'user-not-found':
        message += 'No user found for that email.';
        break;
      case 'wrong-password':
        message += 'Wrong password provided for that user.';
        break;
      default:
        message += 'Error: ${e.message}'; // Providing more specific error message
        break;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login Failed'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );

    print(e); // Log the full exception
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

}
