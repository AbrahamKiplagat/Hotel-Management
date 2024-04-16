import 'package:flutter/material.dart';

class ManageUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Users'),
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
      Icons.people,
      size: 200,
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
            'Add New User',
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
                labelText: 'Username',
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
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add logic to handle user creation
            },
            child: Text('Create User'),
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
