import 'package:art_journal/const.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
        contentPadding: EdgeInsets.all(8),
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
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5),
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
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
            SizedBox(width: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width - 155,
              child: AutoSizeText(
                "${Username} ${action}.",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              context: context,
              builder: (context) => Container(
                height: 250,
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Container(
                      height: 4,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                        color: Dark_50,
                      ),
                    ),
                    Spacer(flex: 1),
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Dark,
                    ),
                    Spacer(flex: 1),
                    Text("data"),
                    Spacer(flex: 1),
                    menubottom(Iconsax.trash, "Remove this notification"),
                    Spacer(flex: 1),
                    menubottom(Iconsax.slash, "Turn off these notification"),
                    Spacer(flex: 1),
                    menubottom(Iconsax.message_question4,
                        "Report issue to Notifications Team"),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            );
          },
          icon: Icon(Iconsax.more),
        ),
      ),
    );
  }

  Widget menubottom(IconData icon, String text) {
    return Row(
      children: [
        SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            color: Dark_50.withOpacity(.5),
          ),
          padding: EdgeInsets.all(7),
          child: Icon(icon, size: 27, color: Dark),
        ),
        SizedBox(width: 15),
        AutoSizeText(
          "$text",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
        ),
      ],
    );
  }
}
