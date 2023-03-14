import 'package:flutter/material.dart';
import 'login.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldMessenger(
        key: _scaffoldMessengerKey,
        child: const Login(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Quicksend',
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}
