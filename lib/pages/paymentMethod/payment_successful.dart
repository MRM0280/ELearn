import 'dart:async';
import 'package:e_learn/pages/screen.dart';

class PaymentSuccessful extends StatefulWidget {
  @override
  _PaymentSuccessfulState createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  DateTime currentBackPressTime;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        currentIndex = 0;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomBar()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.task_alt_rounded,
              color: whiteColor,
              size: 100,
            ),
            Text(
              'Payment successful',
              style: white22SemiBoldTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding * 7.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
                style: white11RegularTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
