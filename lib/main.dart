import 'package:flutter/material.dart';
import 'package:psychohelp/call_page.dart';
import 'package:psychohelp/home_page.dart';
import 'package:psychohelp/join_call_page.dart';
import 'package:psychohelp/payment_page.dart';
import 'package:psychohelp/queue_page.dart';

import 'classification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.black.withOpacity(0.82)),
          bodyText2: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        brightness: Brightness.light,
        primaryColor: const Color(0xFF6200EE),
        fontFamily: 'Roboto',
      ),
      title: 'PsychoHelp',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'classification': (context) => const ClassificationPage(),
        'payment': (context) => const PaymentPage(),
        'queue': (context) => const QueuePage(),
        'join_call': (context) => const JoinCallPage(),
        'call': (context) => const CallPage()
      },
    );
  }
}
