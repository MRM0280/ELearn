import 'package:e_learn/pages/screen.dart';

class Onboarding2 extends StatefulWidget {
  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 150.0),
          image(),
          SizedBox(height: 99.0),
          information(),
        ],
      ),
    );
  }

  image() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image2.png'),
        ),
      ),
    );
  }

  information() {
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
            'Get certificate for\nonline courses',
            textAlign: TextAlign.center,
            style: black27SemiBoldTextStyle,
          ),
          SizedBox(height: 12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
            textAlign: TextAlign.center,
            style: grey14RegularTextStyle,
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Welcome()),
                ),
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor.withOpacity(0.2),
                        blurRadius: 4.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
