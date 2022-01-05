import 'package:e_learn/pages/screen.dart';
import 'package:e_learn/widget/column_builder.dart';

class Details extends StatefulWidget {
  final course;

  const Details({Key key, this.course}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  double height;
  double width;

  final popularCourseList = [
    {
      'image': 'assets/course/popular/course1.png',
      'courseName': 'Advance Drawing Course',
      'providerName': 'Jaysen Batchelor',
      'review': '359,145',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/popular/course2.png',
      'courseName': 'Character Art School',
      'providerName': 'Scott Harris',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': '',
    },
    {
      'image': 'assets/course/popular/course3.png',
      'courseName': 'Blender Creator: Learn 3D',
      'providerName': 'Ardit Sulce',
      'review': '359,145',
      'rating': '4.0',
      'discountPrice': '\$500',
      'price': '\$6,000',
      'status': 'Bestseller',
    },
  ];

  final trendingCourseList = [
    {
      'image': 'assets/course/trending/course1.png',
      'courseName': 'Photoshop Master Course',
      'providerName': 'Manfred Werner',
      'review': '359,145',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'status': '',
    },
    {
      'image': 'assets/course/trending/course2.png',
      'courseName': 'User Experience: Guide',
      'providerName': 'David Travis',
      'review': '12,856',
      'rating': '4.0',
      'discountPrice': '\$420',
      'price': '\$1,590',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/trending/course3.png',
      'courseName': 'Learn Avid Media Compo...',
      'providerName': 'John Lynn',
      'review': '359,145',
      'rating': '4.0',
      'discountPrice': '\$500',
      'price': '\$6,000',
      'status': 'Bestseller',
    },
  ];

  final topicList = [
    {'topic': 'Blender'},
    {'topic': 'Photoshop'},
    {'topic': 'User Experience Design'},
    {'topic': 'Graphic Design'},
    {'topic': '3D Modeling'},
    {'topic': 'Web Design'},
    {'topic': 'CSS'},
  ];

  final designCourseList = [
    {
      'image': 'assets/course/all_courses/course1.png',
      'courseName': 'The Ultimate Drawing Course- Beginner to Ad...',
      'providerName': 'Jaysen Batchlor, Quinton Batchelor',
      'review': '108,007',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '7',
      'lectures': '93',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/all_courses/course2.png',
      'courseName': 'Design Thinking in 3 Steps',
      'providerName': 'Designit Strategic Design, Alan Cooper',
      'review': '168,459',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '2',
      'lectures': '55',
      'status': '',
    },
    {
      'image': 'assets/course/all_courses/course3.png',
      'courseName': 'Illustrator 2021 MasterClass',
      'providerName': 'Martin Perhiniak',
      'review': '108,007',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '8',
      'lectures': '80',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/all_courses/course4.png',
      'courseName': 'Graphic Design Masterclass- Learn GREAT De...',
      'providerName': 'Martin Perhiniak',
      'review': '108,007',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '2',
      'lectures': '32',
      'status': 'Bestseller',
    },
    {
      'image': 'assets/course/all_courses/course4.png',
      'courseName': 'Illustrator 2021 MasterClass',
      'providerName': 'Martin Perhiniak',
      'review': '108,007',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '8',
      'lectures': '80',
      'status': 'Bestseller',
    },
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
          '${widget.course} Courses',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          title('Most Popular'),
          popularList(),
          heightSpace,
          heightSpace,
          title('Trending'),
          trendingList(),
          heightSpace,
          heightSpace,
          title('Featured Courses'),
          featured(),
          heightSpace,
          heightSpace,
          title('Popular Topics'),
          popularTopicsList(),
          heightSpace,
          heightSpace,
          heightSpace,
          title('All Design Courses'),
          courseList(),
        ],
      ),
    );
  }

  title(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: fixPadding,
        bottom: fixPadding,
        right: fixPadding * 2.0,
        left: fixPadding * 2.0,
      ),
      child: Text(
        title,
        style: black18SemiBoldTextStyle,
      ),
    );
  }

  popularList() {
    return Container(
      height: height * 0.213,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: popularCourseList.length,
        itemBuilder: (context, index) {
          final item = popularCourseList[index];
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
                    tag: popularCourseList[index],
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
                      tag: popularCourseList[index],
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

  trendingList() {
    return Container(
      height: height * 0.213,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: trendingCourseList.length,
        itemBuilder: (context, index) {
          final item = trendingCourseList[index];
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
                    tag: trendingCourseList[index],
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
                      tag: trendingCourseList[index],
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

  featured() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding / 2,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.10,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/course/all_courses/course.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 8.0,
                bottom: 8.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: fixPadding / 2),
                  decoration: BoxDecoration(
                    color: redColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    'Hot & New',
                    style: white8BoldTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(fixPadding / 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Start a Squarespace Web Design Business - Work from Home!',
                        style: red15SemiBoldTextStyle,
                      ),
                    ),
                    Icon(
                      Icons.bookmark_outline,
                      color: whiteColor,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...',
                  style: grey10RegularTextStyle,
                ),
                Row(
                  children: [
                    Text(
                      'By Daragh Walsh and 1 other',
                      style: white11RegularTextStyle,
                    ),
                    widthSpace,
                    widthSpace,
                    Text(
                      '4.6',
                      style: yellow10MediumTextStyle,
                    ),
                    ratingStars(rating: 4, point: 6),
                  ],
                ),
                Text(
                  '3 total hours • 45 lectures • Beginner',
                  style: white11RegularTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '\$560',
                      style: red10BoldTextStyle,
                    ),
                    widthSpace,
                    Text(
                      '\$5,820',
                      style: grey10MediumLineThroughtTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  popularTopicsList() {
    return ColumnBuilder(
      itemCount: topicList.length,
      itemBuilder: (context, index) {
        final item = topicList[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                fixPadding * 2.0,
                index == 0 ? fixPadding / 5 : fixPadding * 1.2,
                fixPadding * 2.0,
                fixPadding * 1.2,
              ),
              child: Text(
                item['topic'],
                style: black15SemiBoldTextStyle,
              ),
            ),
            divider(),
          ],
        );
      },
    );
  }

  courseList() {
    return ColumnBuilder(
      itemCount: designCourseList.length,
      itemBuilder: (context, index) {
        final item = designCourseList[index];
        int rating = double.parse(item['rating']).toInt();
        int indexOfDecimal = item['rating'].indexOf(".");
        var point = int.parse(
          item['rating'].substring(indexOfDecimal + 1),
        );
        return Padding(
          padding: EdgeInsets.fromLTRB(
            fixPadding * 2.0,
            index == 0 ? fixPadding / 2 : 0.0,
            fixPadding * 2.0,
            fixPadding * 2.0,
          ),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetails(
                  tag: designCourseList[index],
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
                    tag: designCourseList[index],
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

  divider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      color: greyColor,
      height: 1.0,
      width: double.infinity,
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
