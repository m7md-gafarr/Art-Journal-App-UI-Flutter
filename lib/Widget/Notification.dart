import 'package:art_journal/const.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'TextBottomSheet.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget(
      {super.key,
      required this.Username,
      required this.action,
      required this.icon,
      required this.color});
  final String Username, action;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: Dark,
            ),
            Positioned(
              bottom: -8,
              right: -8,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5),
                    color: color,
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 17,
                ),
              ),
            ),
          ],
        ),
        title: Row(
          children: [
            const SizedBox(width: 10),
            Text(
              Username,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
          ],
        ),
        subtitle: Row(
          children: [
            const SizedBox(width: 10),
            Text(
              "$action.",
              style: const TextStyle(
                fontSize: 15,
              ),
              maxLines: 1,
            ),
            const SizedBox(width: 10),
            const Text(
              "3d",
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              context: context,
              builder: (context) => SizedBox(
                height: 270,
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
                    const Spacer(flex: 1),
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Dark,
                    ),
                    const Spacer(flex: 1),
                    const Text("data"),
                    const Spacer(flex: 1),
                    const TextBottomSheetWidget(
                      text: "Remove this notification",
                      icon: Iconsax.trash,
                      color: Colors.redAccent,
                    ),
                    _divider(),
                    const TextBottomSheetWidget(
                      text: "Turn off these notification",
                      icon: Iconsax.slash,
                      color: Colors.redAccent,
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            );
          },
          icon: const Icon(Iconsax.more),
        ),
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

  Widget menubottom(IconData icon, String text) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            color: Dark_50.withOpacity(.5),
          ),
          padding: const EdgeInsets.all(7),
          child: Icon(icon, size: 27, color: Dark),
        ),
        const SizedBox(width: 15),
        AutoSizeText(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
        ),
      ],
    );
  }
}
