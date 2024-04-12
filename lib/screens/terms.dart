import 'package:flutter/material.dart';
import 'pay_bill.dart'; // Import the PayBillScreen widget

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Conditions',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
         iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "By checking the box below, you agree to Diamond Trust Bank's Terms & Conditions and Privacy policy",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Flexible(
                  // Wrap the Text widget with Flexible
                  child: Text(
                    "I agree to Diamond Trust Bank's ",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Flexible(
                  // Wrap the Text widget with Flexible
                  child: Text(
                    'Terms and conditions and privacy policy',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isChecked
                    ? () {
                        Navigator.pushNamed(context,
                            '/bottomNavigation'); // Navigate to the Pay Bill screen
                      }
                    : null, // Disable button if checkbox is not checked
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: _isChecked
                      ? Colors.red
                      : null, // Set button color to red if checkbox is checked
                ),
                child: Text(
                  'Accept',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
