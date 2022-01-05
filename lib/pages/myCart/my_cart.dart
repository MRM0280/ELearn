import 'package:e_learn/pages/screen.dart';
import 'package:e_learn/widget/column_builder.dart';

class MyCart extends StatelessWidget {
  final courseList = [
    {
      'image': 'assets/course/students_viewing/course1.png',
      'courseName': 'Dart-Beginners Course',
      'providerName': 'Brayn Carins',
      'review': '359,145',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '1',
      'lectures': '20',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/students_viewing/course2.png',
      'courseName': 'React-Beginners Course',
      'providerName': 'Jose Portilla',
      'review': '168,459',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '7',
      'lectures': '93',
      'status': '',
    },
    {
      'image': 'assets/course/students_viewing/course3.png',
      'courseName': 'Flutter Advance Courses',
      'providerName': 'Brayn Carins',
      'review': '553',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '5',
      'lectures': '42',
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
          'My Cart',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          coursesList(),
          checkoutButton(context),
        ],
      ),
    );
  }

  coursesList() {
    return ColumnBuilder(
      itemCount: courseList.length,
      itemBuilder: (context, index) {
        final item = courseList[index];
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
                  tag: courseList[index],
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
                    tag: courseList[index],
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  item['rating'],
                                  style: yellow10MediumTextStyle,
                                ),
                                ratingStars(rating: rating, point: point),
                              ],
                            ),
                            Text(
                              item['status'],
                              style: red10BoldTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '${item['time']} total hours',
                                  style: black10RegularTextStyle,
                                ),
                                Text(
                                  ' • ${item['lectures']} lectures',
                                  style: black10RegularTextStyle,
                                ),
                                Text(
                                  ' • all levels',
                                  style: black10RegularTextStyle,
                                ),
                              ],
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

  checkoutButton(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 3.0,
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SelectPaymentMethod()),
        ),
        child: Container(
          padding: EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            'Checkout',
            style: white20SemiBoldTextStyle,
          ),
        ),
      ),
    );
  }
}
