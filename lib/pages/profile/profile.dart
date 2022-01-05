import 'package:e_learn/pages/screen.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          userDetais(context),
          profileDetails(context),
          logout(context),
        ],
      ),
    );
  }

  userDetais(context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding,
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserInformation()),
        ),
        child: Row(
          children: [
            Hero(
              tag: 'profilePick',
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/users/user2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Samanth John',
                    style: black14MediumTextStyle,
                  ),
                  Text(
                    '(+91) 1234567890',
                    style: grey11RegularTextStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }

  profileDetails(context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 2.0,
      ),
      padding: EdgeInsets.all(fixPadding),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          details(
            icon: 'assets/icons/cart.png',
            title: 'My Cart',
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyCart()),
            ),
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          details(
            icon: 'assets/icons/payment_method.png',
            title: 'Payment Method',
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentMethod()),
            ),
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          details(
            icon: 'assets/icons/notification.png',
            title: 'Notifications',
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notifications()),
            ),
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          details(
            icon: 'assets/icons/down_arrow.png',
            title: 'Downloads',
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Downloads()),
            ),
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          details(
            icon: 'assets/icons/settings.png',
            title: 'Settings',
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            ),
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          details(
            icon: 'assets/icons/support.png',
            title: 'Support',
            ontap: () {},
          ),
        ],
      ),
    );
  }

  details({String title, String icon, ontap}) {
    return InkWell(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                icon,
                height: 16,
                width: 16,
              ),
              widthSpace,
              widthSpace,
              widthSpace,
              Text(
                title,
                style: black14MediumTextStyle,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 14,
          ),
        ],
      ),
    );
  }

  logout(context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 2.0,
      ),
      padding: EdgeInsets.all(fixPadding),
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
      child: InkWell(
        onTap: () => logoutDialog(context),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/logout.png',
              height: 16,
              width: 16,
              color: primaryColor,
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            Text(
              'Logout',
              style: primaryColor14MediumTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  logoutDialog(context) {
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
                        'Sure You Want To Logout?',
                        style: black18MediumTextStyle,
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
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Welcome()),
                              ),
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
                                  'Logout',
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
}
