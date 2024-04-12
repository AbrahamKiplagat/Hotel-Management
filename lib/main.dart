// import 'package:dtb/screens/pay_bill.dart' as PayBill; // Import pay_bill.dart with an alias
import 'package:flutter/material.dart';
import 'package:dtb/screens/register.dart';
// import 'package:dtb/screens/register.dart';
import 'package:dtb/screens/terms.dart';
// import 'package:flutter/material.dart';
// import 'components/register.dart'; // Import the RegisterComponent widget
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:dtb/screens/bottom_navigation.dart';
// import 'package:flutter/material.dart';
import 'package:dtb/screens/pay_bill.dart' as PayBill; // Import pay_bill.dart with an alias

// Your other code remains the same...
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'DTB Mobile Banking',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const RegisterComponent(),
        '/terms': (context) => const Terms(),
        '/payBill': (context) => const PayBill.PayBillScreen(), // Use the alias to refer to PayBillScreen
        '/bottomNavigation': (context) => BottomNavigationBarDesign(),
      },
    );
  }

}

//widget-> is a on screen ui items.
//scaffold->used to create a basic 
//layout for the user interface: drawer,
// an app bar, a bottom navigation bar
//Container->: A widget that can be used 
//to contain other widgets
//child->: A property of a widget that accepts
// a single widget as its child.
// children->: A property of a widget that accepts
// a list of widgets as its children
//Abstract classes->n abstract class is a class 
//that cannot be instantiated and is typically 
//used as a base class for other classes.