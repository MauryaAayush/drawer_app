import 'package:drawer_app/Apps/2.dart';
import 'package:flutter/material.dart';
import 'Apps/1.dart';
import 'Apps/Profile.dart';
import 'Apps/blur.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: '/four',
      routes: {
        '/first' : (context) =>  const GmailSlider(),
       '/second' :  (context) =>   const ProfileSlide(),
       '/third' :  (context) =>   const Newone(),
       '/four' :  (context) =>   const Blur(),
      },

    );
  }
}



