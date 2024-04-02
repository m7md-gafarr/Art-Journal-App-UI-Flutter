import 'dart:ui';
import 'package:art_journal/Widget/ButtonWidget.dart';
import 'package:art_journal/const.dart';
import 'package:art_journal/Widget/GridImageHome.dart';
import 'package:art_journal/screen/Profile.dart';
import 'package:art_journal/screen/SearchWidget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'Notification.dart';
import 'AddImage.dart';
import '../Widget/DividerDrawer.dart';
import '../Widget/DrawerListTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _onlongclick = false;
  TabController? _tabController;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController = TabController(
      animationDuration: const Duration(milliseconds: 300),
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
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  GridImageHome(
                    onLongPress: () {
                      setState(() {
                        _onlongclick = true;
                      });
                    },
                  ),
                  const NotificationScreen(),
                  const SearchWidget(),
                  const AddImage(),
                  const ProfileScreen(),
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
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: TabBar(
                      onTap: (value) {},
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.white,
                      indicatorPadding: const EdgeInsets.only(bottom: 10),
                      controller: _tabController,
                      tabs: const [
                        Tab(child: Icon(Iconsax.home, size: 25)),
                        Tab(child: Icon(Iconsax.notification4, size: 25)),
                        Tab(child: Icon(Iconsax.search_normal, size: 25)),
                        Tab(child: Icon(Iconsax.gallery_add, size: 25)),
                        Tab(child: Icon(Iconsax.user, size: 25)),
                      ],
                    ),
                  ),
                ),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
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
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  " SEE DETAILS",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "font1",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text(
                  "M2' Sokar",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "font",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                accountEmail: const Text(
                  "@m7md_gafar",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "font",
                    fontSize: 15,
                  ),
                ),
                otherAccountsPictures: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                        context: context,
                        builder: (context) => Container(
                          height: MediaQuery.of(context).size.width - 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                          child: Column(
                            children: [
                              const SizedBox(height: 5),
                              Container(
                                height: 4,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                  color: Dark_50,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Text(
                                    "Accounts",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 21,
                                        fontFamily: "font"),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 1),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Dark,
                                  ),
                                  title: const Text("M2' Sokar",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  subtitle: const Text("m7md_gafar"),
                                  trailing: const Icon(Iconsax.tick_circle,
                                      color: Colors.green),
                                ),
                              ),
                              const Spacer(flex: 1),
                              ButtonWidget(
                                label: "Create a new account",
                                onPressed: () {},
                              ),
                              const Spacer(flex: 1),
                              ButtonWidget(
                                label: "Add an existing account",
                                onPressed: () {},
                              ),
                              const Spacer(flex: 1),
                            ],
                          ),
                        ),
                      );
                    },
                    child: const Icon(
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
                  child: const Text("M"),
                ),
                margin: const EdgeInsets.all(10),
                currentAccountPictureSize: const Size(60, 60),
              ),
              const Row(
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
              const DividerDrawer(),
              const drawerlisttile(
                  Label: "Profile", icon: Iconsax.profile_circle4),
              const drawerlisttile(Label: "Bookmarks", icon: Iconsax.save_2),
              const drawerlisttile(Label: "Messages", icon: Iconsax.message),
              const drawerlisttile(
                  Label: "Communities", icon: Iconsax.profile_2user),
              const drawerlisttile(
                  Label: "Follower requests", icon: Iconsax.profile_add4),
              const DividerDrawer(),
              ExpansionTile(
                title: const AutoSizeText(
                  "Professional Tools",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Settings & Support",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  maxLines: 1,
                ),
                children: [
                  ExpandableTile(Iconsax.link_square, "Ads"),
                ],
              ),
              ExpansionTile(
                title: const AutoSizeText(
                  "Settings & Support",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Settings & Support",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  maxLines: 1,
                ),
                children: [
                  ExpandableTile(Iconsax.setting4, "Settings"),
                  ExpandableTile(Iconsax.security_user4, "Privacy"),
                  ExpandableTile(Iconsax.message_question4, "Help Center"),
                ],
              ),
              const DividerDrawer(),
              const drawerlisttile(Label: "Log out", icon: Iconsax.logout),
            ],
          ),
        ),
      ),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width / 5,
      drawerEnableOpenDragGesture: true,
    );
  }

  Widget ExpandableTile(IconData icon, String Label) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 23,
      ),
      title: AutoSizeText(
        Label,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "font",
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        maxLines: 1,
      ),
    );
  }
}
