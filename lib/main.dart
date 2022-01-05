import 'package:flutter/material.dart';
import 'package:e_learn/pages/screen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ELearn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: primaryColor,
        fontFamily: 'Fahkwang',
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: AppBarTheme(
          color: whiteColor,
          elevation: 0.0,
          iconTheme: IconThemeData(color: blackColor),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
