import 'package:e_learn/pages/screen.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final notificationList = [
    {
      'title': 'All development courses  20% discount',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'time': '10 mins',
      'color': Colors.green[800],
    },
    {
      'title': 'New web development botcamp course',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'time': '35 mins',
      'color': Colors.deepOrange[400],
    },
    {
      'title': 'Latest uploaded sketching courses',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'time': '1 h',
      'color': Colors.teal,
    },
    {
      'title': 'Get 35% discount on IT courses',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'time': '2 h',
      'color': Colors.pink[400],
    },
    {
      'title': 'Pro Development',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'time': '2 days',
      'color': Colors.green[800],
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
          'Notifications',
          style: black20SemiBoldTextStyle,
        ),
      ),
      body: notificationList.isEmpty ? noNotifications() : notificationsList(),
    );
  }

  noNotifications() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications_off,
            color: greyColor,
            size: 60.0,
          ),
          Text(
            'No new notifications',
            style: grey14MediumTextStyle,
          ),
        ],
      ),
    );
  }

  notificationsList() {
    return ListView.builder(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: notificationList.length,
      itemBuilder: (context, index) {
        final item = notificationList[index];
        String string = item['title'];
        Color color = item['color'];
        return Dismissible(
          key: Key('$item'),
          background: Container(
              margin: EdgeInsets.only(top: fixPadding, bottom: fixPadding),
              color: primaryColor),
          onDismissed: (direction) {
            setState(() {
              notificationList.removeAt(index);
            });
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${item['title']} dismissed")));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding * 2.0,
              vertical: fixPadding,
            ),
            child: Container(
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(fixPadding),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      string.substring(0, 1),
                      style: TextStyle(
                        color: item['color'],
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
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
                          item['title'],
                          style: black11MediumTextStyle,
                        ),
                        Text(
                          item['description'],
                          style: grey11RegularTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${item['time']} ago',
                              style: grey9SemiBoldTextStyle,
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
}
