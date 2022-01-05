import 'package:e_learn/pages/screen.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notification = true;
  bool mode = false;
  bool calls = false;
  bool course = true;
  bool message = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Settings',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          heightSpace,
          heightSpace,
          notifications(),
          heightSpace,
          heightSpace,
          heightSpace,
          darkMode(),
          heightSpace,
          heightSpace,
          heightSpace,
          phoneCalls(),
          heightSpace,
          heightSpace,
          heightSpace,
          courseAlert(),
          heightSpace,
          heightSpace,
          heightSpace,
          textMessage(),
          heightSpace,
          heightSpace,
          heightSpace,
          title('Security & Privacy'),
          heightSpace,
          heightSpace,
          heightSpace,
          title('Terms & Conditions'),
        ],
      ),
    );
  }

  title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
      ),
      child: Text(
        title,
        style: black14MediumTextStyle,
      ),
    );
  }

  notifications() {
    return Container(
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title('Notifications'),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              activeColor: primaryColor,
              value: notification,
              onChanged: (bool value) {
                setState(() {
                  notification = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  darkMode() {
    return Container(
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title('Dark Mode'),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              activeColor: primaryColor,
              value: mode,
              onChanged: (newValue) {
                setState(() {
                  mode = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  phoneCalls() {
    return Container(
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title('Phone Calls'),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              activeColor: primaryColor,
              value: calls,
              onChanged: (newValue) {
                setState(() {
                  calls = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  courseAlert() {
    return Container(
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title('Course Alert'),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              activeColor: primaryColor,
              value: course,
              onChanged: (newValue) {
                setState(() {
                  course = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  textMessage() {
    return Container(
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title('Text Messages'),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              activeColor: primaryColor,
              value: message,
              onChanged: (newValue) {
                setState(() {
                  message = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
