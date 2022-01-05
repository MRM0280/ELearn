import 'package:e_learn/pages/screen.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool visible1 = false;
  bool visible2 = false;

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
          'Sign Up Your Account',
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
                heightSpace,
                heightSpace,
                userDetails(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  image() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.213,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/signup.png'),
        ),
      ),
    );
  }

  userDetails() {
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
          nameTextField(),
          mobileNumberTextField(),
          emailTextField(),
          passwordTextField(),
          confirmPasswordTextField(),
          signupButton(),
          otherSigninOptions(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an acoount? ',
                style: grey14RegularTextStyle,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signin()),
                ),
                child: Text(
                  'Sign In?',
                  style: grey14SemiBoldTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  nameTextField() {
    return Container(
      height: 30.0,
      margin: EdgeInsets.only(bottom: fixPadding * 3.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greyColor),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            size: 20,
            color: greyColor,
          ),
          widthSpace,
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              keyboardType: TextInputType.name,
              style: black14MediumTextStyle,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintText: 'Full name',
                hintStyle: grey14RegularTextStyle,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  mobileNumberTextField() {
    return Container(
      height: 30.0,
      margin: EdgeInsets.only(bottom: fixPadding * 3.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greyColor),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.phone_android_outlined,
            size: 20,
            color: greyColor,
          ),
          widthSpace,
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
              style: black14MediumTextStyle,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintText: 'Mobile Number',
                hintStyle: grey14RegularTextStyle,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  emailTextField() {
    return Container(
      height: 30.0,
      margin: EdgeInsets.only(bottom: fixPadding * 3.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greyColor),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.mail_outline,
            size: 20,
            color: greyColor,
          ),
          widthSpace,
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              keyboardType: TextInputType.emailAddress,
              style: black14MediumTextStyle,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintText: 'Email Address',
                hintStyle: grey14RegularTextStyle,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  passwordTextField() {
    return Container(
      height: 30.0,
      margin: EdgeInsets.only(bottom: fixPadding * 3.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greyColor),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.lock_outline,
            size: 20,
            color: greyColor,
          ),
          widthSpace,
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              obscureText: !visible1,
              style: black14MediumTextStyle,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintText: 'Password',
                hintStyle: grey14RegularTextStyle,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          widthSpace,
          widthSpace,
          InkWell(
            onTap: () {
              setState(() {
                visible1 = !visible1;
              });
            },
            child: Icon(
              visible1
                  ? Icons.remove_red_eye_outlined
                  : Icons.visibility_off_outlined,
              size: 15,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }

  confirmPasswordTextField() {
    return Container(
      height: 30.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greyColor),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.lock_outline,
            size: 20,
            color: greyColor,
          ),
          widthSpace,
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              obscureText: !visible2,
              style: black14MediumTextStyle,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintText: 'Confirm Password',
                hintStyle: grey14RegularTextStyle,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          widthSpace,
          widthSpace,
          InkWell(
            onTap: () {
              setState(() {
                visible2 = !visible2;
              });
            },
            child: Icon(
              visible2
                  ? Icons.remove_red_eye_outlined
                  : Icons.visibility_off_outlined,
              size: 15,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }

  signupButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: fixPadding * 3.0,
        bottom: fixPadding,
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AccountVarification()),
        ),
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            'Sign Up',
            style: white20SemiBoldTextStyle,
          ),
        ),
      ),
    );
  }

  otherSigninOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: fixPadding),
      child: Column(
        children: [
          Text(
            'OR',
            style: grey14RegularTextStyle,
          ),
          heightSpace,
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xff4267b2),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/icons/facebook_icon.png',
                  height: 18,
                  width: 18,
                ),
              ),
              widthSpace,
              widthSpace,
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xff1da1f2),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/icons/twitter_icon.png',
                  height: 18,
                  width: 18,
                ),
              ),
              widthSpace,
              widthSpace,
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xffea4335),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/icons/google+_icon.png',
                  height: 18,
                  width: 18,
                ),
              ),
              widthSpace,
              widthSpace,
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff285aeb),
                      Color(0xffd6249f),
                      Color(0xfffd5949),
                      Color(0xfffdf497),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/icons/insta_icon.png',
                  color: whiteColor,
                  height: 18,
                  width: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
