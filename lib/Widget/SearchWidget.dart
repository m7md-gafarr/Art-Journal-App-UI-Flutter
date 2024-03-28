import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';

import '../const.dart';
import 'QuickSearch.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorColor: Dark,
              decoration: InputDecoration(
                filled: true,
                fillColor: Dark_50.withOpacity(.3),
                suffixIcon: Icon(Iconsax.search_normal_outline),
                suffixIconColor: Bright,
                hintText: "Search an media",
                hintStyle: TextStyle(
                  color: Dark,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: "font",
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Dark,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Dark,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent searches",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: "font",
                  color: Dark,
                ),
              ),
            ),
          ),
          SizedBox(height: 7),

          ////////////////
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  QuickSearchWidget(Label: "Photography"),
                  QuickSearchWidget(Label: "Pen & Ink"),
                  QuickSearchWidget(Label: "Lady art"),
                  QuickSearchWidget(Label: "Photography"),
                  QuickSearchWidget(Label: "Photography"),
                ],
              ),
            ),
          ),
          //////////////////
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GridView.custom(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => InkWell(
                  onLongPress: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/photo4.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                childCount: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchData extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return null;
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("data");
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("data");
    throw UnimplementedError();
  }
}
