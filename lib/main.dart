import 'package:flutter/material.dart';
import 'package:flutter_app2/Detail.dart';
import 'package:flutter_app2/home.dart';
import 'package:flutter_app2/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true, appBarTheme: AppBarTheme(color: Colors.blue)),
        // initialRoute: '/',
        // routes: {
        //   '/':(context) => welcomepage(),
        //   '/detail': (context) => Detail(),
        // },
        home: welcomepage(),
    );
  }
}