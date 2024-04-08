import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import 'TextBottomSheet.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Dark_50, width: .5))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Hero(
              tag: "imageid",
              child: Image.asset("assets/images/user.png"),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "m7md_gafar",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.5),
                  ),
                  const SizedBox(width: 7),
                  Text(
                    "23 Feb",
                    style: TextStyle(color: Dark_50),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Text("♥️"),
              const SizedBox(height: 5),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width - 70),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "SubPostScreen");
                    },
                    child: Image.asset("assets/images/photo2.jpg"),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.heart,
                      color: Dark_50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.repeat,
                      color: Dark_50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.message_text,
                      color: Dark_50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.send_2,
                      color: Dark_50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                          context: context,
                          builder: (context) => Container(
                                height: MediaQuery.of(context).size.width - 50,
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
                                    TextBottomSheetWidget(
                                      color: Dark,
                                      text: "Save",
                                      icon: Iconsax.save_2,
                                    ),
                                    _divider(),
                                    TextBottomSheetWidget(
                                      color: Dark,
                                      text: "Hide",
                                      icon: Iconsax.eye_slash,
                                    ),
                                    _divider(),
                                    TextBottomSheetWidget(
                                      color: Dark,
                                      text: "Mute",
                                      icon: Iconsax.volume_slash,
                                    ),
                                    _divider(),
                                    const TextBottomSheetWidget(
                                      color: Colors.redAccent,
                                      text: "Block",
                                      icon: Iconsax.user_remove,
                                    ),
                                    _divider(),
                                    const TextBottomSheetWidget(
                                      color: Colors.redAccent,
                                      text: "Report",
                                      icon: Iconsax.message_question4,
                                    ),
                                  ],
                                ),
                              ));
                    },
                    icon: Icon(
                      Iconsax.more,
                      color: Dark_50,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      indent: 50,
      endIndent: 50,
      color: Dark,
      thickness: .4,
      height: 40,
    );
  }
}
