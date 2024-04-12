import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DTB Mobile Banking',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const BottomNavigationBarDesign(),
        '/payBill': (context) => PayBillScreen(), // Add route for PayBillScreen
      },
    );
  }
}

class BottomNavigationBarDesign extends StatefulWidget {
  const BottomNavigationBarDesign({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarDesignState createState() =>
      _BottomNavigationBarDesignState();
}

class _BottomNavigationBarDesignState extends State<BottomNavigationBarDesign> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Send Money Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('More services Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 73, 1),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome John',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'My Accounts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildAccountCard(
                            'Brenda Current Account',
                            '0143 XXXX XXXX',
                            'KSH 356,320.90',
                            'Available balance',
                            Colors.black,
                          ),
                          SizedBox(width: 16.0),
                          _buildAccountCard(
                            'John Savings Account',
                            '0143 XXXX XXXX',
                            'KSH 250,000.00',
                            'Available balance',
                            Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _buildServicesRow(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Send Money',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }

  Widget _buildHomePage() {
    return SizedBox.shrink();
  }

  Widget _buildAccountCard(
    String accountName,
    String accountNumber,
    String balance,
    String balanceLabel,
    Color cardColor,
  ) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 100),
      child: Card(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    accountName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text(
                accountNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                balance,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                balanceLabel,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServicesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildServiceIcon(Icons.phone_android, 'Buy Airtime'),
        _buildServiceIcon(Icons.qr_code_scanner, 'Scan to Pay'),
        _buildServiceIcon(Icons.payment, 'Pay a Bill', '/payBill'), // Link to '/payBill'
        _buildServiceIcon(Icons.link, 'Pesa Link'),
      ],
    );
  }

  Widget _buildServiceIcon(IconData icon, String text, [String? routeName]) {
    return GestureDetector(
      onTap: () {
        if (routeName != null) {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Column(
        children: [
          Icon(
            icon,
            size: 38,
            color: Colors.white,
          ),
          SizedBox(height: 0),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class PayBillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay a Bill'),
      ),
      body: Center(
        child: Text('Pay a Bill Screen'),
      ),
    );
  }
}
//now store data on firebase for registration, and create a new login screen
//Add otp authentications.


