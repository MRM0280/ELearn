import 'package:e_learn/pages/screen.dart';
import 'package:e_learn/widget/column_builder.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool done = false;

  final historyList = [
    {'search': 'Graphic Design Course'},
    {'search': 'Learn English'},
    {'search': 'React Full Course'},
  ];

  final recommendedList = [
    {'search': 'Business & Management'},
    {'search': 'Creative Art & Media'},
    {'search': 'Tech & Coding'},
    {'search': 'The Complete SQL Data Science Course'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            searchTextField(),
            title('History'),
            historyList.isEmpty ? historyEmpty() : searchHistoryList(),
            title('Maybe You Like'),
            recommendedSearchList(),
          ],
        ),
      ),
    );
  }

  searchTextField() {
    return Container(
      margin: EdgeInsets.all(fixPadding * 2.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greyColor),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: greyColor,
            size: 15,
          ),
          widthSpace,
          widthSpace,
          Expanded(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  value.isEmpty ? done = false : done = true;
                });
              },
              cursorColor: primaryColor,
              style: black12SemiBoldTextStyle,
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Search for anything',
                hintStyle: grey12RegularTextStyle,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          done
              ? InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchResult()),
                  ),
                  child: Icon(
                    Icons.done,
                    color: greyColor,
                    size: 15,
                  ),
                )
              : SizedBox(
                  child: InkWell(
                    child: Icon(
                      Icons.close,
                      color: greyColor,
                      size: 15,
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        0.0,
      ),
      child: Text(
        title,
        style: black18SemiBoldTextStyle,
      ),
    );
  }

  historyEmpty() {
    return Padding(
      padding: const EdgeInsets.all(fixPadding * 2.0),
      child: Text(
        'Histoty List is empty',
        textAlign: TextAlign.center,
        style: grey14MediumTextStyle,
      ),
    );
  }

  searchHistoryList() {
    return ColumnBuilder(
      itemCount: historyList.length,
      itemBuilder: (context, index) {
        final item = historyList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Column(
            children: [
              heightSpace,
              heightSpace,
              heightSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item['search'],
                    style: grey11RegularTextStyle,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        historyList.removeAt(index);
                      });
                    },
                    child: Icon(
                      Icons.close,
                      color: greyColor,
                      size: 15,
                    ),
                  )
                ],
              ),
              heightSpace,
              heightSpace,
              heightSpace,
              index == historyList.length - 1 ? Container() : divider(),
            ],
          ),
        );
      },
    );
  }

  recommendedSearchList() {
    return ColumnBuilder(
      itemCount: recommendedList.length,
      itemBuilder: (context, index) {
        final item = recommendedList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightSpace,
              heightSpace,
              heightSpace,
              Text(
                item['search'],
                style: grey11RegularTextStyle,
              ),
              heightSpace,
              heightSpace,
              heightSpace,
              index == recommendedList.length - 1 ? Container() : divider(),
            ],
          ),
        );
      },
    );
  }

  divider() {
    return Container(
      color: greyColor,
      height: 1.0,
      width: double.infinity,
    );
  }
}
