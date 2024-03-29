import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            stretch: true,
            expandedHeight: MediaQuery.of(context).size.width - 250,
            backgroundColor: Bright,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("data"),
              background: Image.asset(
                "assets/images/Caver.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text("Text $index"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
