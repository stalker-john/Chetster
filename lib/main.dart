import 'package:chetster/login_page.dart';
import 'package:chetster/signup_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SignupPage(),
      routes: {
        "/": (context) => LoginPage(),
        "/Login": (context) => LoginPage(),
        "/SignUp": (context) => SignupPage(),
      },
    );
  }
}
