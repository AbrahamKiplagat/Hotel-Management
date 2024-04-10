import 'package:flutter/material.dart';

class PayBillScreen extends StatelessWidget {
  const PayBillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paybill', style: TextStyle(color: Colors.white)),
        centerTitle: true, // Center the title text
        backgroundColor: Colors.red, // Set background color to red
        iconTheme:
            IconThemeData(color: Colors.white), // Set back arrow color to white
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming bills',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      'powered by ',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'images/mula.png', // Path to the custom icon
                      width: 48, // Set the width of the icon
                      height: 48, // Set the height of the icon
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Image.asset(
                      'images/dstv.png', // Path to the custom icon
                      width: 48, // Set the width of the icon
                      height: 48, // Set the height of the icon
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('DSTV'),
                      Text('Deborah banks',
                          style: TextStyle(color: Colors.grey)),
                      Text('01234567890'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Ksh:25,000'),
                      Text('Due today', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Image.asset(
                      'images/kplc.png', // Path to the custom icon
                      width: 48, // Set the width of the icon
                      height: 48, // Set the height of the icon
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('KPLC'),
                      Text('Joice White',
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      Text('01234567890'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Ksh:25,000'),
                      Text('Due today', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: const Color.fromARGB(
                  255, 184, 182, 182), // Set the color of the divider to black
            ),
            ListTile(
              leading: Image.asset(
                'images/savedaccount.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              title: Text('Saved Account'),
              trailing: Image.asset(
                'images/Chevron.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              onTap: () {
                // Add onTap functionality here
              },
            ),
            Divider(
              color: const Color.fromARGB(
                  255, 179, 178, 178), // Set the color of the divider to black
            ),
            Text(
              'ALL MERCHANTS',
              style: TextStyle(color: Colors.grey),
            ),
            Divider(
              color: const Color.fromARGB(255, 179, 178, 178), // Set the color of the divider to black
            ),
            ListTile(
              leading: Image.asset(
                'images/dstv1.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              title: Text('DSTV'),
              trailing: Image.asset(
                'images/Chevron.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              onTap: () {
                // Add onTap functionality here
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 179, 178, 178), // Set the color of the divider to black
            ),
            ListTile(
              leading: Image.asset(
                'images/kplc1.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              title: Text('Kenya Power Tokens'),
              trailing: Image.asset(
                'images/Chevron.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              onTap: () {
                // Add onTap functionality here
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 179, 178, 178), // Set the color of the divider to black
            ),
            ListTile(
              leading: Image.asset(
                'images/gotv.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              title: Text('GOTV'),
              trailing: Image.asset(
                'images/Chevron.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              onTap: () {
                // Add onTap functionality here
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 179, 178, 178), // Set the color of the divider to black
            ),
            ListTile(
              leading: Image.asset(
                'images/kplc1.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              title: Text('Kenya Power Post Paid'),
              trailing: Image.asset(
                'images/Chevron.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              onTap: () {
                // Add onTap functionality here
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 179, 178, 178), // Set the color of the divider to black
            ),
            ListTile(
              leading: Image.asset(
                'images/water.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              title: Text('Nairobi Water'),
              trailing: Image.asset(
                'images/Chevron.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              onTap: () {
                // Add onTap functionality here
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 179, 178, 178), // Set the color of the divider to black
            ),
            ListTile(
              leading: Image.asset(
                'images/jambo.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              title: Text('JamboJet'),
              trailing: Image.asset(
                'images/Chevron.png', // Path to the custom icon
                width: 48, // Set the width of the icon
                height: 48, // Set the height of the icon
              ),
              onTap: () {
                // Add onTap functionality here
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 179, 178, 178), // Set the color of the divider to black
            ),
          ],
        ),
      ),
    );
  }
}
