import 'dart:io';

import 'package:e_learn/pages/screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  DateTime currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool backStatus = onWillPop();
        if (backStatus) {
          exit(0);
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 55.0),
            logo(),
            SizedBox(height: 320.0),
            welcomeText(),
          ],
        ),
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: whiteColor,
      );
      return false;
    } else {
      return true;
    }
  }

  logo() {
    return Image.asset(
      'assets/logo.png',
      height: 100.0,
      width: 150.0,
    );
  }

  welcomeText() {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Welcome To\nE-learn',
            textAlign: TextAlign.center,
            style: black27SemiBoldTextStyle,
          ),
          SizedBox(height: 12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor',
            textAlign: TextAlign.center,
            style: grey14RegularTextStyle,
          ),
          signinButton(),
          signupButton(),
        ],
      ),
    );
  }

  signinButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: fixPadding * 3.0,
        bottom: fixPadding * 2.0,
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signin()),
        ),
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            'Sign In',
            style: primaryColor20SemiBoldTextStyle,
          ),
        ),
      ),
    );
  }

  signupButton() {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Signup()),
      ),
      child: Container(
        padding: EdgeInsets.all(fixPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          border: Border.all(color: primaryColor, width: 1.5),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Sign Up',
          style: white20SemiBoldTextStyle,
        ),
      ),
    );
  }
}
