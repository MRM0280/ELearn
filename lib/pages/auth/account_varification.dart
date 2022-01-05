import 'dart:async';

import 'package:e_learn/pages/screen.dart';

class AccountVarification extends StatefulWidget {
  @override
  _AccountVarificationState createState() => _AccountVarificationState();
}

class _AccountVarificationState extends State<AccountVarification> {
  TextEditingController controller1;
  TextEditingController controller2;
  TextEditingController controller3;
  TextEditingController controller4;

  FocusNode firstFocusNode = FocusNode();
  FocusNode secondFocusNode = FocusNode();
  FocusNode thirdFocusNode = FocusNode();
  FocusNode fourthFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        titleSpacing: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: whiteColor,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Account Varification',
          style: white20SemiBoldTextStyle,
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                image(),
                SizedBox(height: 124),
                otpDetails(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  image() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/authentication.png'),
        ),
      ),
    );
  }

  otpDetails() {
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
            'Enter 4 digit code\nsent to  (+91) 0123654789',
            textAlign: TextAlign.center,
            style: black18MediumTextStyle,
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          codeTextField(),
          heightSpace,
          heightSpace,
          heightSpace,
          Text(
            'Resend code in 00:15s',
            style: grey14BoldTextStyle,
          ),
          continueButton(),
        ],
      ),
    );
  }

  codeTextField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          margin: EdgeInsets.only(right: fixPadding),
          padding: EdgeInsets.all(3.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff534bae),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(
            focusNode: firstFocusNode,
            onChanged: (v) {
              String value = controller1.text ?? "";
              if (value.isEmpty) {
                return;
              }
              FocusScope.of(context).requestFocus(secondFocusNode);
            },
            controller: controller1,
            cursorColor: primaryColor,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: black15SemiBoldTextStyle,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
          width: 30.0,
          height: 30.0,
          margin: EdgeInsets.only(right: fixPadding),
          padding: EdgeInsets.all(3.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff534bae),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(
            focusNode: secondFocusNode,
            onChanged: (v) {
              String value = controller2.text ?? "";
              if (value.isEmpty) {
                FocusScope.of(context).requestFocus(firstFocusNode);
                return;
              }
              FocusScope.of(context).requestFocus(thirdFocusNode);
            },
            controller: controller2,
            cursorColor: primaryColor,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: black15SemiBoldTextStyle,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
          width: 30.0,
          height: 30.0,
          margin: EdgeInsets.only(right: fixPadding),
          padding: EdgeInsets.all(3.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff534bae),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(
            focusNode: thirdFocusNode,
            onChanged: (v) {
              String value = controller3.text ?? "";
              if (value.isEmpty) {
                FocusScope.of(context).requestFocus(secondFocusNode);
                return;
              }
              FocusScope.of(context).requestFocus(fourthFocusNode);
            },
            controller: controller3,
            cursorColor: primaryColor,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: black15SemiBoldTextStyle,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
          width: 30.0,
          height: 30.0,
          alignment: Alignment.center,
          padding: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            color: Color(0xff534bae),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextField(
            focusNode: fourthFocusNode,
            onChanged: (v) {
              String value = controller4.text ?? "";
              if (value.isEmpty) {
                FocusScope.of(context).requestFocus(thirdFocusNode);
                return;
              }
              waitDialog();
            },
            controller: controller4,
            cursorColor: primaryColor,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: black15SemiBoldTextStyle,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }

  continueButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: fixPadding * 4.0,
      ),
      child: InkWell(
        onTap: () => waitDialog(),
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            'Continue',
            style: white20SemiBoldTextStyle,
          ),
        ),
      ),
    );
  }

  waitDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (contxet) {
        return Dialog(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  CircularProgressIndicator(
                    color: primaryColor,
                  ),
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  Text(
                    'Please Wait...',
                    style: grey15SemiBoldTextStyle,
                  ),
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  heightSpace,
                ],
              ),
            ],
          ),
        );
      },
    );
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
}
