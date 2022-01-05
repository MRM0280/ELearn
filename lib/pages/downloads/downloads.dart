import 'package:e_learn/pages/screen.dart';

class Downloads extends StatelessWidget {
  final downloadList = [
    {
      'image': 'assets/course/recommended/course1.png',
      'courseName': 'Zero to Hero in Lightning Web Components',
      'providerName': 'Salesforce Troop',
      'review': '159,264',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/web_development/course1.png',
      'courseName': 'Web Developer Bootcamp-2021',
      'providerName': 'Colt Steele',
      'review': '234,809',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$5,820',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/recommended/course2.png',
      'courseName': 'API and Web Service Introduction',
      'providerName': 'Nate Ross',
      'review': '553',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': '',
    },
    {
      'image': 'assets/course/recommended/course3.png',
      'courseName': 'Ultimate Web Designer & Web Developer Course',
      'providerName': 'Brad Hussey',
      'review': '12,133',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/save/course1.png',
      'courseName': 'Cypress: Web Automation Testing From Zero...',
      'providerName': 'Attem Bonder',
      'review': '1,176',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/save/course2.png',
      'courseName': 'Node With React: Fullstack Web Development',
      'providerName': 'Stephen Grider',
      'review': '13,215',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': '',
    },
    {
      'image': 'assets/course/save/course3.png',
      'courseName': 'Java Web Service',
      'providerName': 'Bharath Thippireddy',
      'review': '7,658',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
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
          'Downloads',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: downloadsList(),
    );
  }

  downloadsList() {
    return ListView.builder(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: downloadList.length,
      itemBuilder: (context, index) {
        final item = downloadList[index];
        int rating = double.parse(item['rating']).toInt();
        int indexOfDecimal = item['rating'].indexOf(".");
        var point = int.parse(
          item['rating'].substring(indexOfDecimal + 1),
        );
        return Padding(
          padding: EdgeInsets.fromLTRB(
            fixPadding * 2.0,
            fixPadding,
            fixPadding * 2.0,
            fixPadding,
          ),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetails(
                  tag: downloadList[index],
                ),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(8.0),
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
                  Hero(
                    tag: downloadList[index],
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(item['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  widthSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['courseName'],
                          overflow: TextOverflow.ellipsis,
                          style: black11MediumTextStyle,
                        ),
                        Text(
                          item['providerName'],
                          style: grey10RegularTextStyle,
                        ),
                        Text(
                          'Reviews: ${item['review']}',
                          style: grey10RegularTextStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              item['rating'],
                              style: yellow10MediumTextStyle,
                            ),
                            ratingStars(rating: rating, point: point),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              item['discountPrice'],
                              style: black10BoldTextStyle,
                            ),
                            widthSpace,
                            Text(
                              item['price'],
                              style: grey10MediumLineThroughtTextStyle,
                            ),
                            widthSpace,
                            widthSpace,
                            widthSpace,
                            Text(
                              item['status'],
                              style: red10BoldTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  ratingStars({int rating, int point}) {
    return Row(
      children: [
        (rating == 5 ||
                rating == 4 ||
                rating == 3 ||
                rating == 2 ||
                rating == 1)
            ? Icon(Icons.star_rounded, size: 12, color: Colors.yellow[800])
            : (point >= 5)
                ? Icon(Icons.star_half, size: 12, color: Colors.yellow[800])
                : Icon(Icons.star_border_rounded,
                    size: 12, color: Colors.yellow[800]),
        (rating == 5 || rating == 4 || rating == 3 || rating == 2)
            ? Icon(Icons.star_rounded, size: 12, color: Colors.yellow[800])
            : (point >= 5)
                ? Icon(Icons.star_half, size: 12, color: Colors.yellow[800])
                : Icon(Icons.star_border_rounded,
                    size: 12, color: Colors.yellow[800]),
        (rating == 5 || rating == 4 || rating == 3)
            ? Icon(Icons.star_rounded, size: 12, color: Colors.yellow[800])
            : (point >= 5)
                ? Icon(Icons.star_half, size: 12, color: Colors.yellow[800])
                : Icon(Icons.star_border_rounded,
                    size: 12, color: Colors.yellow[800]),
        (rating == 5 || rating == 4)
            ? Icon(Icons.star_rounded, size: 12, color: Colors.yellow[800])
            : (point >= 5)
                ? Icon(Icons.star_half, size: 12, color: Colors.yellow[800])
                : Icon(Icons.star_border_rounded,
                    size: 12, color: Colors.yellow[800]),
        (rating == 5)
            ? Icon(Icons.star_rounded, size: 12, color: Colors.yellow[800])
            : (point >= 5)
                ? Icon(Icons.star_half, size: 12, color: Colors.yellow[800])
                : Icon(Icons.star_border_rounded,
                    size: 12, color: Colors.yellow[800]),
      ],
    );
  }
}
