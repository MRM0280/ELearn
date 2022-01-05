import 'package:e_learn/pages/screen.dart';
import 'package:e_learn/widget/column_builder.dart';

class SelectPaymentMethod extends StatefulWidget {
  @override
  _SelectPaymentMethodState createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  String isSelected = 'Credit card / Debit card';

  final paymentMethodList = [
    {
      'image': 'assets/payment_method/wallet.png',
      'method': 'Wallet',
    },
    {
      'image': 'assets/payment_method/cash.png',
      'method': 'Cash on delivery',
    },
    {
      'image': 'assets/payment_method/card.png',
      'method': 'Credit card / Debit card',
    },
    {
      'image': 'assets/payment_method/paypal.png',
      'method': 'Paypal',
    },
    {
      'image': 'assets/payment_method/payUmoney.png',
      'method': 'PayUmoney',
    },
  ];

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
          'Payment Method',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          paymentMethod(),
          continueButton(),
        ],
      ),
    );
  }

  paymentMethod() {
    return ColumnBuilder(
      itemCount: paymentMethodList.length,
      itemBuilder: (context, index) {
        final item = paymentMethodList[index];
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: fixPadding * 2.0,
            vertical: fixPadding,
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                isSelected = item['method'];
              });
            },
            child: Container(
              padding: EdgeInsets.all(fixPadding * 1.2),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor),
                        ),
                        child: isSelected == item['method']
                            ? Container(
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.circle,
                                ),
                              )
                            : Container(),
                      ),
                      widthSpace,
                      widthSpace,
                      widthSpace,
                      widthSpace,
                      Text(
                        item['method'],
                        style: isSelected == item['method']
                            ? primaryColor14MediumTextStyle
                            : black14MediumTextStyle,
                      ),
                    ],
                  ),
                  Image.asset(
                    item['image'],
                    color: isSelected == item['method']
                        ? primaryColor
                        : blackColor,
                    height: 18.0,
                    width: 18.0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  continueButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MakePayment()),
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
            'Continue',
            style: white20SemiBoldTextStyle,
          ),
        ),
      ),
    );
  }
}
