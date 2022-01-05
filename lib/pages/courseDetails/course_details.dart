import 'package:chewie/chewie.dart';
import 'package:e_learn/pages/screen.dart';
import 'package:e_learn/widget/column_builder.dart';
import 'package:video_player/video_player.dart';

class CourseDetails extends StatefulWidget {
  final tag;

  const CourseDetails({Key key, this.tag}) : super(key: key);
  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  double height;
  double width;
  bool isSave = false;
  bool favorite = false;
  String isSelected = 'details';
  ChewieController chewieController;

  final includingTopicsList = [
    {'topic': 'Command Line Basics'},
    {'topic': 'Installing Python'},
    {'topic': 'Running Python Code'},
    {'topic': 'Strings'},
    {'topic': 'Lists'},
    {'topic': 'Dictionaries'},
  ];

  final courseUserList = [
    {'user': 'Beginners who have never programmed before.'},
    {'user': 'Programmers switching languages to Python.'},
    {
      'user':
          'Intermediate Python programmers who want to level up their skills! Intermediate Python programmers who want to level up their skills!'
    },
  ];

  final recommendedList = [
    {
      'image': 'assets/course/recommended/course1.png',
      'courseName': 'Zero to Hero in Lightning Web Components',
      'providerName': 'Salesforce Troop',
      'review': '159,264',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '5',
      'lectures': '31',
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
      'time': '2',
      'lectures': '31',
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
      'time': '2',
      'lectures': '42',
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
      'time': '2',
      'lectures': '37',
      'status': 'Bestseller',
    },
  ];

  final courseContentList = [
    {'content': 'Course Overview'},
    {'content': 'Python Setup'},
    {'content': 'Python Object and Data Structure BasicsSetup'},
    {'content': 'Python Comparison Operators'},
    {'content': 'Python Statements'},
    {'content': 'Methods and Functions'},
    {'content': 'Milestone Project - 1'},
    {'content': 'Python Decorators'},
    {'content': 'Working with PDFs and Spreadsheet CSV Files'},
    {'content': 'Advanced Python Objects and Data Structures'},
  ];

  final courseIncludeList = [
    {
      'image': 'assets/icons/online_video.png',
      'include': '22 hours on-demand video',
    },
    {
      'image': 'assets/icons/document.png',
      'include': '14 articles',
    },
    {
      'image': 'assets/icons/icon.png',
      'include': '19 coding exercises',
    },
    {
      'image': 'assets/icons/access.png',
      'include': 'Full time access',
    },
    {
      'image': 'assets/icons/mobile.png',
      'include': 'Access on mobile and TV',
    },
    {
      'image': 'assets/icons/certificate.png',
      'include': 'Certificate of completion',
    },
  ];

  final learnList = [
    {
      'description':
          'Learn to use Python professionally, learning both Python 2 and Python 3!',
    },
    {
      'description':
          'Create games with Python, like Tic Tac Toe and Blackjack!',
    },
    {
      'description':
          'Learn advanced Python features, like the collections Modu- le and how to work with timestamps!',
    },
    {
      'description': 'Learn to use Object Oriented Programming with classes!',
    },
    {
      'description': 'Understand complex topics, like decorators.',
    },
    {
      'description':
          'Understand how to use both the Jupyter Notebook and create .py files',
    },
    {
      'description':
          'Get an understanding of how to create GUIs in the Jupyter Notebook system!',
    },
  ];

  final coursesList = [
    {
      'image': 'assets/course/python/course4.png',
      'courseName': 'Python for Machine Learning & Data Science',
      'providerName': 'Jose Portilla',
      'review': '159,264',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$6,590',
      'time': '9',
      'lectures': '83',
    },
    {
      'image': 'assets/course/students_viewing/course2.png',
      'courseName': 'React-Beginners Course',
      'providerName': 'Jose Portilla',
      'review': '234,809',
      'rating': '4.6',
      'discountPrice': '\$520',
      'price': '\$5,820',
      'time': '9',
      'lectures': '80',
    },
  ];

  final reviewList = [
    {
      'name': 'Cyrus Thompson',
      'time': 'week',
      'rating': '5.0',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
    },
    {
      'name': 'Kesav Kumar',
      'time': 'month',
      'rating': '2.0',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
    },
    {
      'name': 'Dan Gurland',
      'time': 'month',
      'rating': '4.0',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
    },
    {
      'name': 'Joe Fernandez',
      'time': 'month',
      'rating': '3.0',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
    },
  ];

  @override
  void initState() {
    super.initState();
    chewieController = ChewieController(
      videoPlayerController:
          VideoPlayerController.asset('assets/video/video.mp4'),
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: true,
      looping: true,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              errorMessage,
              style: white14SemiBoldTextStyle,
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    chewieController.dispose();
    chewieController.videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: nestedScrollView(),
    );
  }

  nestedScrollView() {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: height * 0.28,
              elevation: 0.0,
              floating: true,
              pinned: true,
              backgroundColor: primaryColor,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios),
                color: whiteColor,
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isSave = !isSave;
                    });
                  },
                  icon: Icon(
                    isSave ? Icons.bookmark : Icons.bookmark_outline,
                  ),
                  color: whiteColor,
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: widget.tag,
                  child: Chewie(
                    controller: chewieController,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            courseMenu(),
            isSelected == 'details'
                ? details()
                : isSelected == 'modules'
                    ? modules()
                    : isSelected == 'instructor'
                        ? instructor()
                        : reviews(),
          ],
        ),
      ),
    );
  }

  courseMenu() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding * 2.0,
        0.0,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isSelected = 'details';
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: fixPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected == 'details' ? primaryColor : greyColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                'Course Details',
                style: TextStyle(
                  color: isSelected == 'details' ? primaryColor : greyColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: fixPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: greyColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isSelected = 'modules';
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: fixPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected == 'modules' ? primaryColor : greyColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                'Course Modules',
                style: TextStyle(
                  color: isSelected == 'modules' ? primaryColor : greyColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: fixPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: greyColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isSelected = 'instructor';
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: fixPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        isSelected == 'instructor' ? primaryColor : greyColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                'Instructor',
                style: TextStyle(
                  color: isSelected == 'instructor' ? primaryColor : greyColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: fixPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: greyColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isSelected = 'reviews';
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: fixPadding / 2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected == 'reviews' ? primaryColor : greyColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                'Reviews',
                style: TextStyle(
                  color: isSelected == 'reviews' ? primaryColor : greyColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  details() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title('2021 Complete Python Bootcamp From Zero to Hero in Python'),
          courseDetail(),
          title('Description'),
          description(),
          heightSpace,
          heightSpace,
          includingTopics(),
          title('Who this course is  for:'),
          courseUsersList(),
          title('Students also bought'),
          recommendList(),
          heightSpace,
          price(),
          heightSpace,
          heightSpace,
          heightSpace,
          buyNowButton(),
          heightSpace,
          heightSpace,
          heightSpace,
        ],
      ),
    );
  }

  title(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: fixPadding * 2.0,
        bottom: fixPadding / 2,
      ),
      child: Text(
        title,
        style: black18SemiBoldTextStyle,
      ),
    );
  }

  courseDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Learn Python lika a Professional Start from the basics and go all the way to creating your own applications and games.',
          style: grey11RegularTextStyle,
        ),
        heightSpace,
        heightSpace,
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: fixPadding * 1.5,
            vertical: fixPadding / 2,
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            'Bestseller',
            style: white12SemiBoldTextStyle,
          ),
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Text(
              '4.6',
              style: yellow11MediumTextStyle,
            ),
            widthSpace,
            ratingStars(rating: 4, point: 6),
          ],
        ),
        heightSpace,
        heightSpace,
        Text(
          '1,321,891 Students',
          style: grey11RegularTextStyle,
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Text(
              'Created by ',
              style: grey11RegularTextStyle,
            ),
            Text(
              'Jose Portilla',
              style: black11SemiBoldTextStyle,
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Icon(
              Icons.sync,
              color: greyColor,
              size: 18,
            ),
            widthSpace,
            Text(
              'Last Updater',
              style: grey11RegularTextStyle,
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Icon(
              Icons.language,
              color: greyColor,
              size: 18,
            ),
            widthSpace,
            Text('English', style: grey11RegularTextStyle),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Icon(
              Icons.closed_caption_rounded,
              color: greyColor,
              size: 18,
            ),
            widthSpace,
            Text(
              'English (Auto), French (Auto), ',
              style: grey11RegularTextStyle,
            ),
            Text(
              '5 More',
              style: black11SemiBoldTextStyle,
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: fixPadding,
                vertical: fixPadding / 2,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 1.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                children: [
                  Text(
                    'Wishlist',
                    style: primaryColor11BoldTextStyle,
                  ),
                  widthSpace,
                  InkWell(
                    onTap: () {
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                    child: Icon(
                      favorite ? Icons.favorite : Icons.favorite_border,
                      color: primaryColor,
                      size: 11,
                    ),
                  ),
                ],
              ),
            ),
            widthSpace,
            widthSpace,
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: fixPadding,
                vertical: fixPadding / 2,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 1.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                children: [
                  Text(
                    'Share',
                    style: primaryColor11BoldTextStyle,
                  ),
                  widthSpace,
                  Icon(
                    Icons.reply_sharp,
                    color: primaryColor,
                    size: 11,
                  ),
                ],
              ),
            ),
            widthSpace,
            widthSpace,
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: fixPadding,
                vertical: fixPadding / 2,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 1.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                'Gift This Course',
                style: primaryColor11BoldTextStyle,
              ),
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Text('\$560', style: black18BoldTextStyle),
            widthSpace,
            widthSpace,
            Text(
              '\$8,640',
              style: grey11RegularLineThroughTextStyle,
            ),
            widthSpace,
            widthSpace,
            Text(
              '94% off',
              style: grey11RegularTextStyle,
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Icon(
              Icons.watch_later_outlined,
              color: redColor,
              size: 18,
            ),
            widthSpace,
            Text(
              'Just 1 day left at this price!',
              style: red12RegularTextStyle,
            ),
          ],
        ),
      ],
    );
  }

  description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Become a Python Programmer and learn one of employer\'s most requested skills of 2021!',
          style: grey11SemiBoldTextStyle,
        ),
        heightSpace,
        heightSpace,
        Text(
          'This is the most comprehensive, yet straight-forward, cours e for the Python programming language.Whether you have nev er programmed before, already know basic syntax, or want to learn about the advanced features of Python, this course is for you! In this course we will teach you Python 3.',
          style: grey11RegularTextStyle,
        ),
        heightSpace,
        heightSpace,
        Text(
          'With over 100 lectures and more than 21 hours of video thi s comprehensive course leaves no stone unturned! This cours e includes quizzes, tests, coding exercises and homework ass ignments as well as 3 major projects to create a Python projec t portfolio!',
          style: grey11RegularTextStyle,
        ),
      ],
    );
  }

  includingTopics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'We cover a wide variety of topics,including:',
          style: grey11SemiBoldTextStyle,
        ),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: includingTopicsList.length,
          itemBuilder: (context, index) {
            final item = includingTopicsList[index];
            return Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 6.0,
                      width: 6.0,
                      decoration: BoxDecoration(
                        color: greyColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    widthSpace,
                    widthSpace,
                    widthSpace,
                    Text(
                      item['topic'],
                      style: grey11RegularTextStyle,
                    ),
                  ],
                ),
                index == includingTopicsList.length - 1
                    ? Container()
                    : heightSpace,
              ],
            );
          },
        ),
      ],
    );
  }

  courseUsersList() {
    return ColumnBuilder(
      itemCount: courseUserList.length,
      itemBuilder: (context, index) {
        final item = courseUserList[index];
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4.0),
                  height: 6.0,
                  width: 6.0,
                  decoration: BoxDecoration(
                    color: greyColor,
                    shape: BoxShape.circle,
                  ),
                ),
                widthSpace,
                widthSpace,
                widthSpace,
                Expanded(
                  child: Text(
                    item['user'],
                    style: grey11RegularTextStyle,
                  ),
                ),
              ],
            ),
            index == courseUserList.length - 1 ? Container() : heightSpace,
          ],
        );
      },
    );
  }

  recommendList() {
    return ColumnBuilder(
      itemCount: recommendedList.length,
      itemBuilder: (context, index) {
        final item = recommendedList[index];
        int rating = double.parse(item['rating']).toInt();
        int indexOfDecimal = item['rating'].indexOf(".");
        var point = int.parse(
          item['rating'].substring(indexOfDecimal + 1),
        );
        return Padding(
          padding: EdgeInsets.fromLTRB(
            0.0,
            index == 0 ? fixPadding / 2 : fixPadding,
            0.0,
            fixPadding,
          ),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CourseDetails(tag: recommendedList[index]),
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
                    tag: recommendedList[index],
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

  price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '\$560',
          style: black18BoldTextStyle,
        ),
        widthSpace,
        widthSpace,
        Text(
          '\$8,640',
          style: grey11RegularLineThroughTextStyle,
        ),
      ],
    );
  }

  buyNowButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(fixPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Buy Now',
          style: white20SemiBoldTextStyle,
        ),
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

  modules() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title('Course Content'),
          Text(
            '23 sections • 155 lectures • 22h 13m length',
            style: grey11SemiBoldTextStyle,
          ),
          heightSpace,
          courseContent(),
          title('This Course Includes:'),
          courseInclude(),
          title('What you\'ll learn'),
          whatYouLearn(),
        ],
      ),
    );
  }

  courseContent() {
    return ColumnBuilder(
      itemCount: courseContentList.length,
      itemBuilder: (context, index) {
        final item = courseContentList[index];
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4.0),
                  height: 6.0,
                  width: 6.0,
                  decoration: BoxDecoration(
                    color: greyColor,
                    shape: BoxShape.circle,
                  ),
                ),
                widthSpace,
                widthSpace,
                widthSpace,
                Expanded(
                  child: Text(
                    item['content'],
                    style: grey11RegularTextStyle,
                  ),
                ),
              ],
            ),
            index == courseContentList.length - 1 ? Container() : heightSpace,
          ],
        );
      },
    );
  }

  courseInclude() {
    return ColumnBuilder(
      itemCount: courseIncludeList.length,
      itemBuilder: (context, index) {
        final item = courseIncludeList[index];
        return Padding(
          padding: EdgeInsets.only(
            bottom:
                index == courseIncludeList.length - 1 ? 0.0 : fixPadding / 2,
          ),
          child: Row(
            children: [
              Image.asset(
                item['image'],
                height: 12,
                width: 12,
                color: greyColor,
              ),
              widthSpace,
              widthSpace,
              widthSpace,
              Text(
                item['include'],
                style: grey11RegularTextStyle,
              ),
            ],
          ),
        );
      },
    );
  }

  whatYouLearn() {
    return ColumnBuilder(
      itemCount: learnList.length,
      itemBuilder: (context, index) {
        final item = learnList[index];
        return Padding(
          padding: EdgeInsets.only(
            bottom: index == learnList.length - 1 ? 0.0 : fixPadding / 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.done,
                color: greyColor,
                size: 12,
              ),
              widthSpace,
              widthSpace,
              widthSpace,
              Expanded(
                child: Text(
                  item['description'],
                  style: grey11RegularTextStyle,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  instructor() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          instructorDetails(),
          title('About Instructor'),
          aboutInstructor(),
          title('More Courses by Jose Portilla'),
          courseList(),
        ],
      ),
    );
  }

  instructorDetails() {
    return Container(
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
          Row(
            children: [
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/users/user1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              widthSpace,
              widthSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: 12,
                        color: Colors.yellow[800],
                      ),
                      widthSpace,
                      Text(
                        '4.6 Instructor Rating',
                        style: grey11RegularTextStyle,
                      ),
                    ],
                  ),
                  heightSpace,
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/certificate.png',
                        color: Colors.yellow[800],
                        height: 12,
                        width: 12,
                      ),
                      widthSpace,
                      Text(
                        '767,981 Reviews',
                        style: grey11RegularTextStyle,
                      ),
                    ],
                  ),
                  heightSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 12,
                        color: Colors.yellow[800],
                      ),
                      widthSpace,
                      Text(
                        '2,362,932 Students',
                        style: grey11RegularTextStyle,
                      ),
                    ],
                  ),
                  heightSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        size: 12,
                        color: Colors.yellow[800],
                      ),
                      widthSpace,
                      Text(
                        '32 Courses',
                        style: grey11RegularTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          heightSpace,
          Text(
            'Jose Portilla',
            style: black16SemiBoldTextStyle,
          ),
          Text(
            'Head of data science, Pierian Data Inc.',
            style: grey11MediumTextStyle,
          ),
        ],
      ),
    );
  }

  aboutInstructor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jose Marcial Portilla has a BS and MS in Mechanical Engineering from Santa Clara University and years of experience as a professional instructor and trainer for Data Science and programming.',
          style: grey11RegularTextStyle,
        ),
        heightSpace,
        heightSpace,
        Text(
          'He has publications and patents in various fields such as microfluidics, materials science, and data science technologies. Over the course of his career he has developed a skill set in analyzing data...',
          style: grey11RegularTextStyle,
        ),
      ],
    );
  }

  courseList() {
    return ColumnBuilder(
      itemCount: coursesList.length,
      itemBuilder: (context, index) {
        final item = coursesList[index];
        int rating = double.parse(item['rating']).toInt();
        int indexOfDecimal = item['rating'].indexOf(".");
        var point = int.parse(
          item['rating'].substring(indexOfDecimal + 1),
        );
        return Padding(
          padding: EdgeInsets.fromLTRB(
            0.0,
            index == 0 ? fixPadding / 2 : fixPadding,
            0.0,
            fixPadding,
          ),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetails(tag: coursesList[index]),
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
                    tag: coursesList[index],
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

  reviews() {
    return ColumnBuilder(
      itemCount: reviewList.length,
      itemBuilder: (context, index) {
        final item = reviewList[index];
        int rating = double.parse(item['rating']).toInt();
        int indexOfDecimal = item['rating'].indexOf(".");
        var point = int.parse(
          item['rating'].substring(indexOfDecimal + 1),
        );
        return Container(
          margin: EdgeInsets.fromLTRB(
              fixPadding * 2.0,
              index == 0 ? fixPadding * 3.0 : 0.0,
              fixPadding * 2.0,
              fixPadding * 2.0),
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
              Text(
                item['name'],
                style: black11SemiBoldTextStyle,
              ),
              SizedBox(height: 3.0),
              Row(
                children: [
                  ratingStars(rating: rating, point: point),
                  widthSpace,
                  widthSpace,
                  Text(
                    'a ${item['time']} ago',
                    style: grey11SemiBoldTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 3.0),
              Text(
                item['review'],
                style: grey11RegularTextStyle,
              ),
            ],
          ),
        );
      },
    );
  }
}
