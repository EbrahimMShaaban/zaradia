import 'package:flutter/material.dart';
import 'package:zaradia/features/login/login_view.dart';
import 'constant.dart';
import 'core/router/router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginView(),
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          elevation: 0.0,
          color: Colors.white,
        ),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: defaultColor,
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
              fontSize: 19.0,
              fontWeight: FontWeight.bold
            )
          ),
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  type: BottomNavigationBarType.fixed,
  selectedItemColor: defaultColor,
  unselectedItemColor: Colors.grey,
  elevation: 20.0,
  backgroundColor: Colors.white

)
//          fontFamily: 'Tajwal'
      ),
    );
  }
}

