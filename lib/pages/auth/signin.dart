import 'package:e_learn/pages/screen.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool visible = false;

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
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Welcome()),
          ),
        ),
        title: Text(
          'Sign In Your Account',
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
                SizedBox(height: 70),
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
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/signin.png'),
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
          passwordTextField(),
          signinButton(),
          otherSigninOptions(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an acoount? ',
                style: grey14RegularTextStyle,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                ),
                child: Text(
                  'Sign Up?',
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
                hintText: 'User name',
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
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
                  obscureText: !visible,
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
                    visible = !visible;
                  });
                },
                child: Icon(
                  visible
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off_outlined,
                  size: 15,
                  color: greyColor,
                ),
              ),
            ],
          ),
        ),
        Text(
          'Forget password?',
          style: grey11RegularTextStyle,
        ),
      ],
    );
  }

  signinButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: fixPadding * 3.0,
        bottom: fixPadding,
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signup()),
        ),
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            'Sign In',
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
