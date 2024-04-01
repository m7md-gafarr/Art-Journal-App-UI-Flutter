import 'package:art_journal/const.dart';
import 'package:art_journal/model/intro.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class introPage extends StatefulWidget {
  const introPage({super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  List<introModel> Listpage = [
    const introModel(
      Label: "Art Journal 1",
      Imagepath: "assets/images/intro/intro1.svg",
      SubLabel:
          "Note that in the below code I'am blurring the whole screen except for the image. You can change the size of the blurred part by setting the container's size.",
    ),
    const introModel(
      Label: "Art Journal 2",
      Imagepath: "assets/images/intro/intro2.svg",
      SubLabel:
          "Note that in the below code I'am blurring the whole screen except for the image. You can change the size of the blurred part by setting the container's size.",
    ),
    const introModel(
      Label: "Art Journal 3",
      Imagepath: "assets/images/intro/intro3.svg",
      SubLabel:
          "Note that in the below code I'am blurring the whole screen except for the image. You can change the size of the blurred part by setting the container's size.",
    ),
  ];

  final _controller = PageController();

  bool _lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                if (value == 2) {
                  _lastpage = true;
                } else {
                  _lastpage = false;
                }
              });
            },
            controller: _controller,
            physics: const BouncingScrollPhysics(),
            itemCount: Listpage.length,
            itemBuilder: (context, index) =>
                ContainerintroWidget(iModel: Listpage[index]),
          ),
          _lastpage
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Bright,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width / 3, 50),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50)))),
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    child: const AutoSizeText(
                      "GET START",
                      style: TextStyle(fontFamily: "font", fontSize: 17),
                      maxLines: 1,
                    ),
                  ),
                )
              : Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothPageIndicator(
                            onDotClicked: (index) => _controller.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOut,
                            ),
                            controller: _controller,
                            count: Listpage.length,
                            effect: JumpingDotEffect(
                              dotHeight: 8.5,
                              dotWidth: 8.5,
                              activeDotColor: Dark,
                              dotColor: Dark_50,
                            ),
                          ),
                          const Text(
                            "SCROLL RIGHT",
                            style: TextStyle(
                              fontFamily: "font",
                              fontSize: 13,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeOut);
                            },
                            icon: Icon(
                              Iconsax.arrow_right_1,
                              color: Dark,
                              size: 27,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          _lastpage
              ? const Text("")
              : Positioned(
                  top: 40,
                  right: 0,
                  child: TextButton(
                    onPressed: () {
                      _controller.animateToPage(2,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut);
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        fontFamily: "font",
                        fontSize: 18,
                        color: Dark,
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}

class ContainerintroWidget extends StatelessWidget {
  const ContainerintroWidget({super.key, required this.iModel});
  final introModel iModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iModel.Imagepath,
            height: MediaQuery.of(context).size.width - 70,
          ),
          Text(
            iModel.Label,
            style: TextStyle(
              color: Bright,
              fontFamily: "font1",
              fontSize: 33,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              iModel.SubLabel,
              style: TextStyle(
                color: Dark_50,
                fontFamily: "font",
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
