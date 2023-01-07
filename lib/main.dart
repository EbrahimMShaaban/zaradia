import 'package:flutter/material.dart';

import 'features/intro_screens/intro_screen_view.dart';

void main() {
  runApp(const MyApp());
}
//kareem
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:  IntroScreenView(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),

    );
  }
}


