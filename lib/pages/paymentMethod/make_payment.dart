import 'package:e_learn/pages/screen.dart';

class MakePayment extends StatelessWidget {
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
          paymentDetails(),
          cardDetails(),
          makePaymentButton(context),
        ],
      ),
    );
  }

  paymentDetails() {
    return Column(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          padding: EdgeInsets.all(fixPadding),
          decoration: BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/payment_method/credit_card.png',
            color: whiteColor,
          ),
        ),
        heightSpace,
        Text(
          'CARD',
          style: black12SemiBoldTextStyle,
        ),
        heightSpace,
        Text(
          '\$2,569',
          style: black18BoldTextStyle,
        ),
        Text(
          'Amount to be paid',
          style: grey14RegularTextStyle,
        ),
      ],
    );
  }

  cardDetails() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding * 1.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Card Details',
            style: black18MediumTextStyle,
          ),
          Container(
            margin: EdgeInsets.only(top: fixPadding * 1.5),
            decoration: BoxDecoration(
              color: greyColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextField(
              cursorColor: primaryColor,
              style: black14MediumTextStyle,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(fixPadding),
                hintText: 'Samantha John',
                hintStyle: grey14MediumTextStyle,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: fixPadding),
            padding: EdgeInsets.symmetric(horizontal: fixPadding),
            decoration: BoxDecoration(
              color: greyColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/payment_method/credit_card.png',
                  color: greyColor,
                  height: 24.0,
                  width: 24.0,
                ),
                Expanded(
                  child: TextField(
                    cursorColor: primaryColor,
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(fixPadding),
                      hintText: '**** **** **** 4848',
                      hintStyle: grey14MediumTextStyle,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  makePaymentButton(context) {
    return Padding(
      padding: const EdgeInsets.all(fixPadding * 2.0),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentSuccessful()),
        ),
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            'Make Payment',
            style: white20SemiBoldTextStyle,
          ),
        ),
      ),
    );
  }
}
