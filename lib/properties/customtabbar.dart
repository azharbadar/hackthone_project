import 'package:test_ui/properties/colors.dart';
import 'package:test_ui/properties/customtabbar.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/screens/card.dart';
import  'package:test_ui/properties/colors.dart';
import 'package:test_ui/screens/iphone.dart';

class ProfileTabBarNavigation extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: kArtwork),
    const Tab(text: kPastJobs),
    const Tab(
      text: kPastJobs1,
    ),
    const Tab(
      text: kPastJobs2,
    ),
    const Tab(
      text: kPastJobs3,
    ),
  ];

  ProfileTabBarNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: TabBar(
          tabs: myTabs,
          labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          unselectedLabelColor: Colorselect().black,
          labelColor: Colorselect().favcolor,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        body: TabBarView(
            //   physics:  NeverScrollableScrollPhysics(),
            children: myTabs.map((Tab tab) {
          return ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => iphone_view())
                      )
                      );
                    },
                    child: Cart(
                      bgcolor: Colorselect().favcolor,
                      pro: 'Pro',
                      pname: 'Watermelon',
                      price: '\$400',
                      plantimg: 'p1.png'),
                ),
              );
            },
          );
        }).toList()),
      ),
    );
  }
}

const String kArtwork = "Top Pick";
const String kPastJobs = "Indoor";
const String kPastJobs1 = "Outdoor";
const String kPastJobs2 = "Seeds";
const String kPastJobs3 = "Plants";
const EdgeInsets kPaddingTabBar = EdgeInsets.all(12.0);
// const Color kLightGrey = Colors.grey;
