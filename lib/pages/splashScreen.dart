import 'dart:async';

import 'package:e_learn/pages/screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Onboarding1()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 310.0),
          logo(),
          SizedBox(height: 270.0),
          spinkit(),
        ],
      ),
    );
  }

  logo() {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/logo.png',
        height: 100.0,
        width: 150.0,
      ),
    );
  }

  spinkit() {
    return SpinKitFadingCircle(
      color: whiteColor,
      size: 50.0,
    );
  }
}
