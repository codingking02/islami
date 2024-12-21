import 'package:flutter/material.dart';
import 'package:islami/islami_radio.dart';
import 'package:islami/sebha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      routes: {
        Sebha.routeName: (_) => Sebha(),
        IslamiRadio.routeName: (_) => IslamiRadio()
      },
      initialRoute: IslamiRadio.routeName,
    );
  }
}
