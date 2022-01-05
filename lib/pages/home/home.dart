import 'package:e_learn/pages/screen.dart';
import 'package:e_learn/widget/column_builder.dart';
import 'package:expandable/expandable.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height;
  double width;

  final pythonCourseList = [
    {
      'image': 'assets/course/python/course1.png',
      'courseName': 'Python Bootcamp',
      'providerName': 'Jose Portilla',
      'review': '359,145',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/python/course2.png',
      'courseName': 'Python Programming Class',
      'providerName': 'Ardit Sulce',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/python/course3.png',
      'courseName': 'Python Data Analysis',
      'providerName': 'Jose Portilla',
      'review': '359,145',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': '',
    },
  ];

  final excelCourseList = [
    {
      'image': 'assets/course/excel/course1.png',
      'courseName': 'Microsoft Excel Full Course',
      'providerName': 'Kyle Pew, Office Newb',
      'review': '234,809',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$5,820',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/excel/course2.png',
      'courseName': 'Ultimate Excel Programmer',
      'providerName': 'Daniel Strong',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': '',
    },
    {
      'image': 'assets/course/excel/course3.png',
      'courseName': 'Microsoft Excel Advanced',
      'providerName': 'Infinite Skills',
      'review': '359,145',
      'rating': '4.0',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': '',
    },
  ];

  final webDevelopmentCourseList = [
    {
      'image': 'assets/course/web_development/course1.png',
      'courseName': 'The Web Developer Bootcamp',
      'providerName': 'Colt Steele',
      'review': '234,809',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$5,820',
      'status': '',
    },
    {
      'image': 'assets/course/web_development/course2.png',
      'courseName': 'Web Developer Course 2.0',
      'providerName': 'Rob Percival',
      'review': '67,314',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/web_development/course3.png',
      'courseName': 'Advanced Developer Boot...',
      'providerName': 'Infinite Skills',
      'review': '359,145',
      'rating': '4.0',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': '',
    },
  ];

  final javaScriptCourseList = [
    {
      'image': 'assets/course/javaScript/course1.png',
      'courseName': 'The Complete JS Course',
      'providerName': 'Jonas Schmedtmann',
      'review': '234,809',
      'rating': '4.6',
      'discountPrice': '\$560',
      'price': '\$5,820',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/javaScript/course2.png',
      'courseName': 'Modern JS From The Begi...',
      'providerName': 'Brad Traversy',
      'review': '25,293',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/javaScript/course3.png',
      'courseName': 'JS Advanced Concepts',
      'providerName': 'Andrei Neagoie',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': '',
    },
  ];

  final dataScienceCourseList = [
    {
      'image': 'assets/course/data_science/course1.png',
      'courseName': 'Complete Data Science C...',
      'providerName': 'Careers',
      'review': '93,634',
      'rating': '4.6',
      'discountPrice': '\$560',
      'price': '\$5,820',
      'status': '',
    },
    {
      'image': 'assets/course/data_science/course2.png',
      'courseName': 'Statistics for Data Science',
      'providerName': 'Careers Team',
      'review': '25,293',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/data_science/course3.png',
      'courseName': 'DS and Machine Learing',
      'providerName': 'Jose Portilla',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': '',
    },
  ];

  final drawingCourseList = [
    {
      'image': 'assets/course/drawing/course1.png',
      'courseName': 'Ultimate Drawing Course',
      'providerName': 'Jaysen Batchelor',
      'review': '93,634',
      'rating': '4.6',
      'discountPrice': '\$560',
      'price': '\$5,820',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/drawing/course2.png',
      'courseName': 'Art & Science of Drawing',
      'providerName': 'Brent Eviston',
      'review': '25,293',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/drawing/course3.png',
      'courseName': 'Hot to Draw From Beginner',
      'providerName': 'Joseph Patric Daniels',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': '',
    },
  ];

  final latestCourseList = [
    {
      'image': 'assets/course/latest/course1.png',
      'courseName': 'Advance UI/UX Courses',
      'providerName': 'Jose Portilla',
      'review': '359,145',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/latest/course2.png',
      'courseName': 'Digital Marketing',
      'providerName': 'Ardit Sulce',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': '',
    },
    {
      'image': 'assets/course/latest/course3.png',
      'courseName': 'Advance HTML Courses',
      'providerName': 'Jose Portilla',
      'review': '359,145',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
    },
  ];

  final studentsViewCourseList = [
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

  final topCategoryList = [
    {'category': 'Design'},
    {'category': 'Development'},
    {'category': 'IT and Software'},
    {'category': 'Marketing'},
    {'category': 'Music'},
    {'category': 'Personal Development'},
    {'category': 'Business'},
  ];

  final developmentCourseList = [
    {
      'course': 'Python',
      'students': '28,45,789',
      'color': Color(0xffc8e6c9),
    },
    {
      'course': 'Machine language',
      'students': '9,45,789',
      'color': Color(0xffffccbc),
    },
    {
      'course': 'Web Development',
      'students': '8,45,789',
      'color': Color(0xffb2dfdb),
    },
  ];

  final designCourseList = [
    {
      'course': 'Photoshop',
      'students': '9,53,189',
      'color': Color(0xfff8bbd0),
    },
    {
      'course': 'Graphic Design',
      'students': '2,731,355',
      'color': Color(0xffc5cae9),
    },
    {
      'course': 'Drawing',
      'students': '2,45,789',
      'color': Color(0xfff1f8e9),
    },
  ];

  final businessCourseList = [
    {
      'course': 'Financial Analysis',
      'students': '1,45,789',
      'color': Color(0xffffcdd2),
    },
    {
      'course': 'SQL',
      'students': '4,163,610',
      'color': Color(0xffe1bee7),
    },
    {
      'course': 'PMP',
      'students': '8,45,789',
      'color': Color(0xffffe0b2),
    },
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          banner(),
          heightSpace,
          heightSpace,
          searchTextField(),
          heightSpace,
          divider(),
          ExpandablePanel(
            header: header('Python'),
            collapsed: Container(),
            expanded: pythonCoursesList(),
          ),
          divider(),
          ExpandablePanel(
            header: header('Excel'),
            collapsed: Container(),
            expanded: excelCoursesList(),
          ),
          divider(),
          ExpandablePanel(
            header: header('Web Development'),
            collapsed: Container(),
            expanded: webDevelopmentCoursesList(),
          ),
          divider(),
          ExpandablePanel(
            header: header('JavaScript'),
            collapsed: Container(),
            expanded: javaScriptCoursesList(),
          ),
          divider(),
          ExpandablePanel(
            header: header('Data Science'),
            collapsed: Container(),
            expanded: dataScienceCoursesList(),
          ),
          divider(),
          ExpandablePanel(
            header: header('Drawing'),
            collapsed: Container(),
            expanded: drawingCoursesList(),
          ),
          divider(),
          heightSpace,
          title('Latest Course'),
          latestCoursesList(),
          title('Student Are Viewing'),
          studentsViewCoursesList(),
          title('Top Categories'),
          topCategoriesList(),
          heightSpace,
          title('Featured Topics By Category'),
          featuredTopics(),
        ],
      ),
    );
  }

  banner() {
    return Container(
      height: height * 0.20,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/Banner.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  searchTextField() {
    return Padding(
      padding: const EdgeInsets.all(fixPadding * 2.0),
      child: InkWell(
        onTap: () {
          currentIndex = 1;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomBar()),
          );
        },
        child: Container(
          padding: EdgeInsets.all(fixPadding * 1.3),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'What do you want to learn?',
                style: grey16RegularTextStyle,
              ),
              Icon(
                Icons.search,
                color: greyColor,
                size: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  header(String header) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 1.2,
      ),
      child: Text(
        header,
        style: black15SemiBoldTextStyle,
      ),
    );
  }

  title(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: Text(
        title,
        style: black18SemiBoldTextStyle,
      ),
    );
  }

  pythonCoursesList() {
    return Container(
      height: height * 0.213,
      margin: EdgeInsets.only(bottom: fixPadding * 1.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: pythonCourseList.length,
        itemBuilder: (context, index) {
          final item = pythonCourseList[index];
          int rating = double.parse(item['rating']).toInt();
          int indexOfDecimal = item['rating'].indexOf(".");
          var point = int.parse(
            item['rating'].substring(indexOfDecimal + 1),
          );
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? fixPadding * 2.0 : 0.0,
              fixPadding / 2,
              fixPadding * 2.0,
              fixPadding / 2,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    tag: pythonCourseList[index],
                  ),
                ),
              ),
              child: Container(
                width: width * 0.43,
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
                  children: [
                    Hero(
                      tag: pythonCourseList[index],
                      child: Container(
                        height: height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['courseName'],
                            overflow: TextOverflow.ellipsis,
                            style: black11MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            item['providerName'],
                            style: grey10RegularTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Reviews: ${item['review']}',
                            style: grey10MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                item['rating'].toString(),
                                style: yellow10MediumTextStyle,
                              ),
                              ratingStars(rating: rating, point: point),
                            ],
                          ),
                          SizedBox(height: 2),
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
      ),
    );
  }

  excelCoursesList() {
    return Container(
      height: height * 0.213,
      margin: EdgeInsets.only(bottom: fixPadding * 1.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: excelCourseList.length,
        itemBuilder: (context, index) {
          final item = excelCourseList[index];
          int rating = double.parse(item['rating']).toInt();
          int indexOfDecimal = item['rating'].indexOf(".");
          var point = int.parse(
            item['rating'].substring(indexOfDecimal + 1),
          );
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? fixPadding * 2.0 : 0.0,
              fixPadding / 2,
              fixPadding * 2.0,
              fixPadding / 2,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    tag: excelCourseList[index],
                  ),
                ),
              ),
              child: Container(
                width: width * 0.43,
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
                  children: [
                    Hero(
                      tag: excelCourseList[index],
                      child: Container(
                        height: height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['courseName'],
                            overflow: TextOverflow.ellipsis,
                            style: black11MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            item['providerName'],
                            style: grey10RegularTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Reviews: ${item['review']}',
                            style: grey10MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                item['rating'],
                                style: yellow10MediumTextStyle,
                              ),
                              ratingStars(rating: rating, point: point),
                            ],
                          ),
                          SizedBox(height: 2),
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
      ),
    );
  }

  webDevelopmentCoursesList() {
    return Container(
      height: height * 0.213,
      margin: EdgeInsets.only(bottom: fixPadding * 1.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: webDevelopmentCourseList.length,
        itemBuilder: (context, index) {
          final item = webDevelopmentCourseList[index];
          int rating = double.parse(item['rating']).toInt();
          int indexOfDecimal = item['rating'].indexOf(".");
          var point = int.parse(
            item['rating'].substring(indexOfDecimal + 1),
          );
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? fixPadding * 2.0 : 0.0,
              fixPadding / 2,
              fixPadding * 2.0,
              fixPadding / 2,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    tag: webDevelopmentCourseList[index],
                  ),
                ),
              ),
              child: Container(
                width: width * 0.43,
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
                  children: [
                    Hero(
                      tag: webDevelopmentCourseList[index],
                      child: Container(
                        height: height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['courseName'],
                            overflow: TextOverflow.ellipsis,
                            style: black11MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            item['providerName'],
                            style: grey10RegularTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Reviews: ${item['review']}',
                            style: grey10MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                item['rating'],
                                style: yellow10MediumTextStyle,
                              ),
                              ratingStars(rating: rating, point: point),
                            ],
                          ),
                          SizedBox(height: 2),
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
      ),
    );
  }

  javaScriptCoursesList() {
    return Container(
      height: height * 0.213,
      margin: EdgeInsets.only(bottom: fixPadding * 1.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: javaScriptCourseList.length,
        itemBuilder: (context, index) {
          final item = javaScriptCourseList[index];
          int rating = double.parse(item['rating']).toInt();
          int indexOfDecimal = item['rating'].indexOf(".");
          var point = int.parse(
            item['rating'].substring(indexOfDecimal + 1),
          );
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? fixPadding * 2.0 : 0.0,
              fixPadding / 2,
              fixPadding * 2.0,
              fixPadding / 2,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    tag: javaScriptCourseList[index],
                  ),
                ),
              ),
              child: Container(
                width: width * 0.43,
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
                  children: [
                    Hero(
                      tag: javaScriptCourseList[index],
                      child: Container(
                        height: height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['courseName'],
                            overflow: TextOverflow.ellipsis,
                            style: black11MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            item['providerName'],
                            style: grey10RegularTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Reviews: ${item['review']}',
                            style: grey10MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                item['rating'],
                                style: yellow10MediumTextStyle,
                              ),
                              ratingStars(rating: rating, point: point),
                            ],
                          ),
                          SizedBox(height: 2),
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
      ),
    );
  }

  dataScienceCoursesList() {
    return Container(
      height: height * 0.213,
      margin: EdgeInsets.only(bottom: fixPadding * 1.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: dataScienceCourseList.length,
        itemBuilder: (context, index) {
          final item = dataScienceCourseList[index];
          int rating = double.parse(item['rating']).toInt();
          int indexOfDecimal = item['rating'].indexOf(".");
          var point = int.parse(
            item['rating'].substring(indexOfDecimal + 1),
          );
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? fixPadding * 2.0 : 0.0,
              fixPadding / 2,
              fixPadding * 2.0,
              fixPadding / 2,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    tag: dataScienceCourseList[index],
                  ),
                ),
              ),
              child: Container(
                width: width * 0.43,
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
                  children: [
                    Hero(
                      tag: dataScienceCourseList[index],
                      child: Container(
                        height: height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['courseName'],
                            overflow: TextOverflow.ellipsis,
                            style: black11MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            item['providerName'],
                            style: grey10RegularTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Reviews: ${item['review']}',
                            style: grey10MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                item['rating'],
                                style: yellow10MediumTextStyle,
                              ),
                              ratingStars(rating: rating, point: point),
                            ],
                          ),
                          SizedBox(height: 2),
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
      ),
    );
  }

  drawingCoursesList() {
    return Container(
      height: height * 0.213,
      margin: EdgeInsets.only(bottom: fixPadding * 1.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: drawingCourseList.length,
        itemBuilder: (context, index) {
          final item = drawingCourseList[index];
          int rating = double.parse(item['rating']).toInt();
          int indexOfDecimal = item['rating'].indexOf(".");
          var point = int.parse(
            item['rating'].substring(indexOfDecimal + 1),
          );
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? fixPadding * 2.0 : 0.0,
              fixPadding / 2,
              fixPadding * 2.0,
              fixPadding / 2,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    tag: drawingCourseList[index],
                  ),
                ),
              ),
              child: Container(
                width: width * 0.43,
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
                  children: [
                    Hero(
                      tag: drawingCourseList[index],
                      child: Container(
                        height: height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['courseName'],
                            overflow: TextOverflow.ellipsis,
                            style: black11MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            item['providerName'],
                            style: grey10RegularTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Reviews: ${item['review']}',
                            style: grey10MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                item['rating'],
                                style: yellow10MediumTextStyle,
                              ),
                              ratingStars(rating: rating, point: point),
                            ],
                          ),
                          SizedBox(height: 2),
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
      ),
    );
  }

  latestCoursesList() {
    return Container(
      height: height * 0.213,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: latestCourseList.length,
        itemBuilder: (context, index) {
          final item = latestCourseList[index];
          int rating = double.parse(item['rating']).toInt();
          int indexOfDecimal = item['rating'].indexOf(".");
          var point = int.parse(
            item['rating'].substring(indexOfDecimal + 1),
          );
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? fixPadding * 2.0 : 0.0,
              fixPadding / 2,
              fixPadding * 2.0,
              fixPadding / 2,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    tag: latestCourseList[index],
                  ),
                ),
              ),
              child: Container(
                width: width * 0.43,
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
                  children: [
                    Hero(
                      tag: latestCourseList[index],
                      child: Container(
                        height: height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['courseName'],
                            style: black11MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            item['providerName'],
                            style: grey10RegularTextStyle,
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Reviews: ${item['review']}',
                            style: grey10MediumTextStyle,
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Text(
                                item['rating'],
                                style: yellow10MediumTextStyle,
                              ),
                              ratingStars(rating: rating, point: point),
                            ],
                          ),
                          SizedBox(height: 2),
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
      ),
    );
  }

  studentsViewCoursesList() {
    return ColumnBuilder(
      itemCount: studentsViewCourseList.length,
      itemBuilder: (context, index) {
        final item = studentsViewCourseList[index];
        int rating = double.parse(item['rating']).toInt();
        int indexOfDecimal = item['rating'].indexOf(".");
        var point = int.parse(
          item['rating'].substring(indexOfDecimal + 1),
        );
        return Padding(
          padding: EdgeInsets.fromLTRB(
            fixPadding * 2.0,
            index == 0 ? fixPadding / 2 : fixPadding * 1.5,
            fixPadding * 2.0,
            fixPadding / 2,
          ),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetails(
                  tag: studentsViewCourseList[index],
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
                    tag: studentsViewCourseList[index],
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.15,
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

  topCategoriesList() {
    return ColumnBuilder(
      itemCount: topCategoryList.length,
      itemBuilder: (context, index) {
        final item = topCategoryList[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(course: item['category']),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  fixPadding * 2.0,
                  index == 0 ? fixPadding / 2 : fixPadding * 1.2,
                  fixPadding * 2.0,
                  fixPadding * 1.2,
                ),
                child: Text(
                  item['category'],
                  style: black15SemiBoldTextStyle,
                ),
              ),
            ),
            divider(),
          ],
        );
      },
    );
  }

  featuredTopics() {
    return Container(
      height: height * 0.27,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          developmentCategory(),
          designCategory(),
          businessCategory(),
        ],
      ),
    );
  }

  developmentCategory() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding / 2,
        0.0,
        fixPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Development',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          ColumnBuilder(
            itemCount: developmentCourseList.length,
            itemBuilder: (context, index) {
              final item = developmentCourseList[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, fixPadding),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        course: item['course'],
                      ),
                    ),
                  ),
                  child: Container(
                    width: width * 0.40,
                    padding: EdgeInsets.all(fixPadding / 2),
                    decoration: BoxDecoration(
                      color: item['color'],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['course'],
                          style: black13BoldTextStyle,
                        ),
                        Text(
                          '${item['students']} Students',
                          style: black13MediumTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  designCategory() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding / 2,
        0.0,
        fixPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Design',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          ColumnBuilder(
            itemCount: designCourseList.length,
            itemBuilder: (context, index) {
              final item = designCourseList[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, fixPadding),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        course: item['course'],
                      ),
                    ),
                  ),
                  child: Container(
                    width: width * 0.40,
                    padding: EdgeInsets.all(fixPadding / 2),
                    decoration: BoxDecoration(
                      color: item['color'],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['course'],
                          style: black13BoldTextStyle,
                        ),
                        Text(
                          '${item['students']} Students',
                          style: black13MediumTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  businessCategory() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding / 2,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Business',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          ColumnBuilder(
            itemCount: businessCourseList.length,
            itemBuilder: (context, index) {
              final item = businessCourseList[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, fixPadding),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        course: item['course'],
                      ),
                    ),
                  ),
                  child: Container(
                    width: width * 0.40,
                    padding: EdgeInsets.all(fixPadding / 2),
                    decoration: BoxDecoration(
                      color: item['color'],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['course'],
                          style: black13BoldTextStyle,
                        ),
                        Text(
                          '${item['students']} Students',
                          style: black13MediumTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
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

  divider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      color: greyColor,
      height: 1.0,
      width: double.infinity,
    );
  }
}
