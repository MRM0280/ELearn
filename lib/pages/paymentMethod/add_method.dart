import 'package:e_learn/pages/screen.dart';
import 'package:e_learn/widget/column_builder.dart';

class AddMethod extends StatefulWidget {
  @override
  _AddMethodState createState() => _AddMethodState();
}

class _AddMethodState extends State<AddMethod> {
  double height;
  double width;
  String isSelected = 'card';
  int selectedEmail = 0;
  String selectedDetails;
  String card = 'Add new card';
  String cardImage = 'assets/payment_method/credit_card.png';

  final emaiAddressList = [
    {'email': 'paypalmydomain@.net'},
    {'email': 'salesmydomain@.net'},
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Add New Method',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          cards(),
          paypal(),
          selectedDetails == 'cardDetails'
              ? cardDetails()
              : selectedDetails == 'paypalDetails'
                  ? paypalDetails()
                  : Container(),
        ],
      ),
    );
  }

  cards() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          setState(() {
            isSelected = 'card';
          });
          chooseCardType();
        },
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          decoration: BoxDecoration(
            color: greyColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Image.asset(
                cardImage,
                color: isSelected == 'card' ? primaryColor : greyColor,
                height: 24,
                width: 24,
              ),
              widthSpace,
              widthSpace,
              Expanded(
                child: Text(
                  card,
                  style: TextStyle(
                    color: isSelected == 'card' ? primaryColor : greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              widthSpace,
              widthSpace,
              Icon(
                Icons.keyboard_arrow_down,
                color: isSelected == 'card' ? primaryColor : greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  chooseCardType() {
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
                        'Choose Card Type',
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
                        setState(() {
                          card = 'Visa card';
                          cardImage = 'assets/payment_method/visa.png';
                          selectedDetails = 'cardDetails';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/payment_method/visa.png',
                              height: 16,
                              width: 16,
                            ),
                            widthSpace,
                            widthSpace,
                            widthSpace,
                            Text(
                              'Visa Card',
                              style: black14MediumTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          card = 'Master card';
                          cardImage = 'assets/payment_method/mastercard.png';
                          selectedDetails = 'cardDetails';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/payment_method/mastercard.png',
                              height: 20,
                              width: 20,
                            ),
                            widthSpace,
                            widthSpace,
                            widthSpace,
                            Text(
                              'Master Card',
                              style: black14MediumTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          card = 'Credit card';
                          cardImage = 'assets/payment_method/credit_card.png';
                          selectedDetails = 'cardDetails';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/payment_method/credit_card.png',
                              height: 16,
                              width: 16,
                            ),
                            widthSpace,
                            widthSpace,
                            widthSpace,
                            Text(
                              'Credit Card',
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

  cardDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 2.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cardPhoto(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          cardNumberTextField(),
          heightSpace,
          heightSpace,
          heightSpace,
          nameTextField(),
          heightSpace,
          heightSpace,
          heightSpace,
          cardInformationTextField(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          addButton(),
        ],
      ),
    );
  }

  cardPhoto() {
    return Container(
      height: height * 0.17,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/payment_method/Creditcard.png'),
        ),
      ),
    );
  }

  cardNumberTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Card number',
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
            style: black14MediumTextStyle,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(fixPadding),
              hintText: 'Enter card number',
              hintStyle: grey14MediumTextStyle,
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }

  nameTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cardholder name',
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
            style: black14MediumTextStyle,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(fixPadding),
              hintText: 'Enter cardholder name',
              hintStyle: grey14MediumTextStyle,
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }

  cardInformationTextField() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Valid Thru',
              style: black14MediumTextStyle,
            ),
            Container(
              width: width / 2 - 50,
              margin: EdgeInsets.only(top: fixPadding / 2),
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                cursorColor: primaryColor,
                style: black14MediumTextStyle,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(fixPadding),
                  hintText: 'Enter expiration...',
                  hintStyle: grey14MediumTextStyle,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        widthSpace,
        widthSpace,
        widthSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CVV',
              style: black14MediumTextStyle,
            ),
            Container(
              width: width / 2 - 50,
              margin: EdgeInsets.only(top: fixPadding / 2),
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                cursorColor: primaryColor,
                style: black14MediumTextStyle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(fixPadding),
                  hintText: 'Enter CVV in ...',
                  hintStyle: grey14MediumTextStyle,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  paypal() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          setState(() {
            isSelected = 'paypal';
            selectedDetails = 'paypalDetails';
          });
        },
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          decoration: BoxDecoration(
            color: greyColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/payment_method/paypal_method.png',
                color: isSelected == 'paypal' ? primaryColor : greyColor,
                height: 24,
                width: 24,
              ),
              widthSpace,
              widthSpace,
              Text(
                'Add new paypal mail address',
                style: TextStyle(
                  color: isSelected == 'paypal' ? primaryColor : greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  paypalDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 2.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter new one paypal mail address',
            style: TextStyle(
              color: blackColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          ColumnBuilder(
            itemCount: emaiAddressList.length,
            itemBuilder: (context, index) {
              final item = emaiAddressList[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: fixPadding),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedEmail = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(fixPadding),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: greyColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item['email'],
                            style: selectedEmail == index
                                ? primaryColor14MediumTextStyle
                                : grey14MediumTextStyle),
                        Container(
                          height: 14,
                          width: 14,
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: selectedEmail == index
                                    ? primaryColor
                                    : greyColor),
                          ),
                          child: selectedEmail == index
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          addButton(),
        ],
      ),
    );
  }

  addButton() {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomBar()),
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
          'Add',
          style: white20SemiBoldTextStyle,
        ),
      ),
    );
  }
}
