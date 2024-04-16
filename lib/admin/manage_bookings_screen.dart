import 'package:flutter/material.dart';

class ManageBookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Bookings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              // For larger screens (e.g., desktop)
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildIcon(),
                  SizedBox(width: 20),
                  _buildForm(),
                ],
              );
            } else {
              // For smaller screens (e.g., mobile)
              return _buildColumn();
            }
          },
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return Icon(
      Icons.book,
      size: 100,
      color: Colors.blue,
    );
  }

  Widget _buildForm() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add New Booking',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 300, // Set specific width for text input fields
            child: TextField(
              style: TextStyle(fontSize: 16), // Reduce font size for desktop
              decoration: InputDecoration(
                labelText: 'Customer Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 300, // Set specific width for text input fields
            child: TextField(
              style: TextStyle(fontSize: 16), // Reduce font size for desktop
              decoration: InputDecoration(
                labelText: 'Room Number',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add logic to handle booking creation
            },
            child: Text('Create Booking'),
          ),
        ],
      ),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildIcon(),
        SizedBox(height: 20),
        _buildForm(),
      ],
    );
  }
}
