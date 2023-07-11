import 'package:alo/admin/adminhome.dart';
import 'package:alo/admin/orders.dart';
import 'package:alo/admin/pricingcalculator.dart';
import 'package:alo/admin/updatetracking.dart';
import 'package:alo/admin/vieworderrequests.dart';
import 'package:alo/chat.dart';
import 'package:alo/client/home.dart';
import 'package:alo/client/pendingorder.dart';
import 'package:alo/client/placeorder.dart';
import 'package:alo/client/reviews.dart';
import 'package:alo/drawerpages/aboutus.dart';
import 'package:alo/drawerpages/contactus.dart';
import 'package:alo/drawerpages/profile.dart';
import 'package:alo/drawerpages/trackorderinfo.dart';
import 'package:alo/firebase_options.dart';
import 'package:alo/forgot.dart';
import 'package:alo/getstarted.dart';
import 'package:alo/login.dart';
import 'package:alo/login_register_page.dart';
import 'package:alo/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => GetStarted(),
        "login_register_page": (context) => login_page(),
         "signup": (context) => signup_page(),
        "login": (context) => login_page(),
        "forgot": (context) => forgot(),
        //client
        "home": (context) => home(),
        "placeorder": (context) => PlaceOrder(),
        "pendingorder": (context) => pendingorder(),
        "profile": (context) => Profile(),
        "aboutus": (context) => aboutus(),
        "trackorderinfo": (context) => trackorderinfo(),
        "contactus": (context) => ContactUs(),
        "reviews": (context) => reviews(),
        //admin
        "adminhome": (context) => adminhome(),
        "pricingcalculator": (context) => PricingCalculator(),
        "vieworderrequests": (context) => vieworderrequests(),
        "orders": (context) => orders(),
        "chat": (context) => ChatScreen(),
        "updatetracking": (context) => updatetracking(),
      },
    );
  }
}

