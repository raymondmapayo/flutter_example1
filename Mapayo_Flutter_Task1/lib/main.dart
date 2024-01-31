// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/newpage.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/sampletextfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 86, 11, 248)),
        useMaterial3: false,
      ),
      home: SampleTextField(),
    );
  }
}
