import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  value: false,
                  onChanged: (value) {
                    // Handle checkbox value change
                  },
                ),
                Text(
                  "I agree to Diamond Trust Bank's ",
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  'Terms and conditions and privacy policy',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // Handle accept button press
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 16.0),
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
    );
  }
}
