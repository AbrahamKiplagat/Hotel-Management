import 'package:flutter/material.dart';
import 'package:hotel_management/admin/manage_bookings_screen.dart';
import 'package:hotel_management/admin/manage_rooms_screen.dart';
import 'package:hotel_management/admin/manage_services_screen.dart';
import 'package:hotel_management/admin/manage_users_screen.dart';


class AdminDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      backgroundColor: Colors.grey[200], // Set background color of the screen
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // For larger screens (e.g., desktop)
            return _buildGrid(context, 3);
          } else {
            // For smaller screens (e.g., mobile)
            return _buildGrid(context, 2);
          }
        },
      ),
    );
  }

  Widget _buildGrid(BuildContext context, int crossAxisCount) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: [
          _buildCard('Manage Users', Icons.people, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ManageUsersScreen()),
            );
          }),
          _buildCard('Manage Rooms', Icons.room, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ManageRoomsScreen()),
            );
          }),
          _buildCard('Manage Bookings', Icons.book, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ManageBookingsScreen()),
            );
          }),
          _buildCard('Manage Services', Icons.local_offer, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ManageServicesScreen()),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildCard(String title, IconData iconData, VoidCallback onTap) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  size: 50.0,
                  color: Colors.blue,
                ),
                SizedBox(height: 20.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}