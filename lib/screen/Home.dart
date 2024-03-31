import 'dart:ui';
import 'package:art_journal/const.dart';
import 'package:art_journal/Widget/GridImageHome.dart';
import 'package:art_journal/screen/Profile.dart';
import 'package:art_journal/screen/SearchWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'Notification.dart';
import 'AddImage.dart';
import '../Widget/DividerDrawer.dart';
import '../Widget/DrawerListTile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _onlongclick = false;
  TabController? _tabController;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void initState() {
    _tabController = TabController(
      animationDuration: Duration(milliseconds: 300),
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _onlongclick = false;
    _tabController;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  GridImageHome(
                    onLongPress: () {
                      setState(() {
                        _onlongclick = true;
                      });
                    },
                  ),
                  NotificationScreen(),
                  SearchWidget(),
                  AddImage(),
                  ProfileScreen(),
                ],
              ),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                Positioned(
                  bottom: 15,
                  right: 15,
                  left: 15,
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Bright,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: TabBar(
                      onTap: (value) {},
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.white,
                      indicatorPadding: EdgeInsets.only(bottom: 10),
                      controller: _tabController,
                      tabs: [
                        Tab(child: Icon(Iconsax.home, size: 25)),
                        Tab(child: Icon(Iconsax.notification4, size: 25)),
                        Tab(child: Icon(Iconsax.search_normal, size: 25)),
                        Tab(child: Icon(Iconsax.gallery_add, size: 25)),
                        Tab(child: Icon(Iconsax.user, size: 25)),
                      ],
                    ),
                  ),
                ),
              // Positioned(
              //   left: 15,
              //   top: 15,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       scaffoldKey.currentState!.openDrawer();
              //     },
              //     child: Icon(Iconsax.menu_1),
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Bright,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(50)))),
              //   ),
              // ),
              if (_onlongclick == true)
                Container(
                  color: Colors.black.withOpacity(0.5),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _onlongclick = false;
                            });
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 37.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Icon(
                                  Iconsax.close_circle,
                                  color: Bright,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/photo2.jpg",
                          height: MediaQuery.of(context).size.width,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " SEE DETAILS",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "font1",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Iconsax.arrow_right_1,
                                  color: Bright,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width - 100,
        backgroundColor: Bright,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "M2' Sokar",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "font",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              accountEmail: Text(
                "@m7md_gafar",
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: "font",
                  fontSize: 15,
                ),
              ),
              otherAccountsPictures: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Iconsax.more_circle,
                    color: Colors.white,
                    size: 27,
                  ),
                )
              ],
              decoration: BoxDecoration(
                color: Bright,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Dark,
                child: Text("M"),
              ),
              margin: EdgeInsets.all(10),
              currentAccountPictureSize: Size(60, 60),
            ),
            Row(
              children: [
                SizedBox(width: 25),
                Text(
                  "1020",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "font",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Follower",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "font",
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "3750",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "font",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Followers",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "font",
                  ),
                ),
              ],
            ),
            DividerDrawer(),
            drawerlisttile(Label: "Profile", icon: Iconsax.profile_circle4),
            drawerlisttile(Label: "Bookmarks", icon: Iconsax.save_2),
            drawerlisttile(
                Label: "Follower requests", icon: Iconsax.profile_add4),
            DividerDrawer(),
            drawerlisttile(Label: "Settings", icon: Iconsax.setting4),
            drawerlisttile(Label: "Privacy", icon: Iconsax.security_user4),
            drawerlisttile(
                Label: "Help Center", icon: Iconsax.message_question4),
          ],
        ),
      ),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      drawerEnableOpenDragGesture: true,
    );
  }
}
