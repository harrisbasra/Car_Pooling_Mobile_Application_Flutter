import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test/CustomerAccepted.dart';
import 'package:test/DriverArrived.dart';
import 'package:test/DriverNotFound.dart';
import 'package:test/FinishDriverJob.dart';
import 'package:test/splash_screen00.dart';
import 'BookingAccepted.dart';
import 'FinishRide.dart';
import 'TestingPage.dart';
import 'firebase_options.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver2Go',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TestingPage(),
   // home: SplashScreen(),
    );
  }
}
