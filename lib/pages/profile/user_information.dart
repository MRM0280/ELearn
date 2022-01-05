import 'package:e_learn/pages/screen.dart';

class UserInformation extends StatefulWidget {
  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  final nameController = TextEditingController(text: 'Samantha John');
  final changeNameController = TextEditingController();
  final passwordController = TextEditingController(text: '12345678');
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneNumberController = TextEditingController(text: '(+19) 1234567890');
  final changePhoneNumberController = TextEditingController();
  final emailController = TextEditingController(text: 'samantha@gmail.com');
  final changeEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          heightSpace,
          heightSpace,
          profilePick(),
          nameTextField(),
          emailTextField(),
          passwordTextField(),
          phoneNumberTextField(),
          saveButton(),
        ],
      ),
    );
  }

  profilePick() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Container(
        height: 70.0,
        width: 70.0,
        child: Stack(
          children: [
            InkWell(
              onTap: () => changeProfilePick(),
              borderRadius: BorderRadius.circular(35.0),
              child: Hero(
                tag: 'profilePick',
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/users/user2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: InkWell(
                onTap: () => changeProfilePick(),
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: whiteColor,
                    size: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  changeProfilePick() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: whiteColor,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(fixPadding),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: fixPadding),
                      child: Text(
                        'Choose Option',
                        textAlign: TextAlign.center,
                        style: black18MediumTextStyle,
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              color: blackColor,
                              size: 18.0,
                            ),
                            widthSpace,
                            widthSpace,
                            Text(
                              'Camera',
                              style: black14MediumTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.photo_library,
                              color: blackColor,
                              size: 18.0,
                            ),
                            widthSpace,
                            widthSpace,
                            Text(
                              'Select Photo From Gallery',
                              style: black14MediumTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  nameTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding * 4.0,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () => changeName(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: fixPadding, vertical: 5.0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.1),
                blurRadius: 4.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Name',
                  style: grey14MediumTextStyle,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextField(
                  cursorColor: primaryColor,
                  enabled: false,
                  controller: nameController,
                  style: black14MediumTextStyle,
                  decoration: InputDecoration(
                    isDense: true,
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  changeName() {
    showDialog(
      context: context,
      builder: (context) {
        changeNameController.text = nameController.text;
        return Dialog(
          backgroundColor: whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          insetPadding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(fixPadding * 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Change Your Name',
                        style: black18MediumTextStyle,
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    Text(
                      'Name',
                      style: black14MediumTextStyle,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: fixPadding / 2),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        cursorColor: primaryColor,
                        controller: changeNameController,
                        style: black14MediumTextStyle,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(fixPadding),
                          hintText: 'Enter your name',
                          hintStyle: grey14MediumTextStyle,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: fixPadding * 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'Cancel',
                                  style: primaryColor14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                nameController.text = changeNameController.text;
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'Done',
                                  style: white14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  passwordTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () => changePassword(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: fixPadding, vertical: 5.0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.1),
                blurRadius: 4.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Password',
                  style: grey14MediumTextStyle,
                ),
              ),
              Expanded(
                flex: 4,
                child: TextField(
                  enabled: false,
                  controller: passwordController,
                  obscureText: true,
                  style: black14MediumTextStyle,
                  decoration: InputDecoration(
                    isDense: true,
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  changePassword() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          insetPadding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(fixPadding * 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Change Your Password',
                        style: black18MediumTextStyle,
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    Text(
                      'Old Password',
                      style: black14MediumTextStyle,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: fixPadding / 2),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        cursorColor: primaryColor,
                        obscureText: true,
                        controller: oldPasswordController,
                        style: black14MediumTextStyle,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(fixPadding),
                          hintText: 'Enter password 8-12 characters',
                          hintStyle: grey14MediumTextStyle,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    Text(
                      'New Password',
                      style: black14MediumTextStyle,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: fixPadding / 2),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        cursorColor: primaryColor,
                        obscureText: true,
                        controller: newPasswordController,
                        style: black14MediumTextStyle,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(fixPadding),
                          hintText: 'Enter password 8-12 characters',
                          hintStyle: grey14MediumTextStyle,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    Text(
                      'Confirm Password',
                      style: black14MediumTextStyle,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: fixPadding / 2),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        cursorColor: primaryColor,
                        obscureText: true,
                        controller: confirmPasswordController,
                        style: black14MediumTextStyle,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(fixPadding),
                          hintText: 'Enter password 8-12 characters',
                          hintStyle: grey14MediumTextStyle,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: fixPadding * 6.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                oldPasswordController.clear();
                                newPasswordController.clear();
                                confirmPasswordController.clear();
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.all(fixPadding),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  'Cancel',
                                  style: primaryColor14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                if (newPasswordController.text ==
                                        confirmPasswordController.text &&
                                    oldPasswordController.text ==
                                        passwordController.text) {
                                  if (newPasswordController.text.length >= 8 &&
                                      newPasswordController.text.length <= 12) {
                                    passwordController.text =
                                        confirmPasswordController.text;
                                    Navigator.of(context).pop();
                                  }
                                }

                                oldPasswordController.clear();
                                newPasswordController.clear();
                                confirmPasswordController.clear();
                              },
                              child: Container(
                                padding: EdgeInsets.all(fixPadding),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  'Done',
                                  style: white14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  emailTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () => changeEmail(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: fixPadding, vertical: 5.0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.1),
                blurRadius: 4.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Email',
                  style: grey14MediumTextStyle,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextField(
                  cursorColor: primaryColor,
                  enabled: false,
                  controller: emailController,
                  style: black14MediumTextStyle,
                  decoration: InputDecoration(
                    isDense: true,
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  changeEmail() {
    showDialog(
      context: context,
      builder: (context) {
        changeEmailController.text = emailController.text;
        return Dialog(
          backgroundColor: whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          insetPadding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(fixPadding * 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Change Your Email',
                        style: black18MediumTextStyle,
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    Text(
                      'Email',
                      style: black14MediumTextStyle,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: fixPadding / 2),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        cursorColor: primaryColor,
                        controller: changeEmailController,
                        style: black14MediumTextStyle,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(fixPadding),
                          hintText: 'Enter your email',
                          hintStyle: grey14MediumTextStyle,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: fixPadding * 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'Cancel',
                                  style: primaryColor14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                emailController.text =
                                    changeEmailController.text;
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'Done',
                                  style: white14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  phoneNumberTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () => changePhoneNumber(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: fixPadding, vertical: 5.0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.1),
                blurRadius: 4.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Phone',
                  style: grey14MediumTextStyle,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextField(
                  cursorColor: primaryColor,
                  enabled: false,
                  controller: phoneNumberController,
                  style: black14MediumTextStyle,
                  decoration: InputDecoration(
                    isDense: true,
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  changePhoneNumber() {
    showDialog(
      context: context,
      builder: (context) {
        changePhoneNumberController.text = phoneNumberController.text;
        return Dialog(
          backgroundColor: whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          insetPadding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(fixPadding * 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Change Your Phone',
                        style: black18MediumTextStyle,
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    Text(
                      'Phone',
                      style: black14MediumTextStyle,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: fixPadding / 2),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        cursorColor: primaryColor,
                        controller: changePhoneNumberController,
                        style: black14MediumTextStyle,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(fixPadding),
                          hintText: 'Enter your phone number',
                          hintStyle: grey14MediumTextStyle,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    heightSpace,
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: fixPadding * 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'Cancel',
                                  style: primaryColor14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          widthSpace,
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                phoneNumberController.text =
                                    changePhoneNumberController.text;
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'Done',
                                  style: white14SemiBoldTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  saveButton() {
    return Padding(
      padding: const EdgeInsets.all(fixPadding * 2.0),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            'Save',
            style: white20SemiBoldTextStyle,
          ),
        ),
      ),
    );
  }
}
