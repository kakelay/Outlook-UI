import 'package:flutter/material.dart';
import 'package:web_email/responsive.dart';
import '../constants.dart';
import 'side_menu_item.dart';
import 'tags.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatelessWidget {
    SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo Outlook.png",
                    width: 46,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              TextButton(onPressed: () {
                
              }, child:  Text(
                  "New message",
                  style: TextStyle(color: Colors.white),
                ),),
              
              SizedBox(height: kDefaultPadding),

              TextButton(onPressed: () {
                
              }, child:  Text(
                  "Get messages",
                  style: TextStyle(color: Colors.white),
                ),),
              // FlatButton.icon(
              //   minWidth: double.infinity,
              //   padding: EdgeInsets.symmetric(
              //     vertical: kDefaultPadding,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   color: kBgDarkColor,
              //   onPressed: () {},
              //   icon: WebsafeSvg.asset("assets/Icons/Download.svg", width: 16),
              //   label: Text(
              //     "Get messages",
              //     style: TextStyle(color: kTextColor),
              //   ),
              // ).addNeumorphism(),
              SizedBox(height: kDefaultPadding * 2),
              // Menu Items
              SideMenuItem(
                press: () {},
                title: "Inbox",
                iconSrc: "assets/Icons/Inbox.svg",
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                itemCount: 1,
                press: () {},
                title: "Sent",
                iconSrc: "assets/Icons/Send.svg",
                isActive: false,
              ),
              SideMenuItem(
                  itemCount: 1,
                press: () {},
                title: "Drafts",
                iconSrc: "assets/Icons/File.svg",
                isActive: false,
              ),
              SideMenuItem(
                  itemCount: 1,
                press: () {},
                title: "Deleted",
                iconSrc: "assets/Icons/Trash.svg",
                isActive: false,
                showBorder: false,
              ),

              SizedBox(height: kDefaultPadding * 2),
              // Tags
              Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
