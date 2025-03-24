import 'package:flutter/material.dart';
import 'package:web_email/responsive.dart';
import '../constants.dart';
import 'side_menu_item.dart';
import 'tags.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: Theme.of(context).scaffoldBackgroundColor, // Adapt to theme
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/Logo Outlook.png", width: 46),
                  Spacer(),
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kDefaultPadding),

              // Outlook-style New Message Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0078D4), // Outlook Blue
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  print("New message button clicked");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.create, size: 18, color: Colors.white),
                    SizedBox(width: 8),
                    Text("New message", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),

              SizedBox(height: kDefaultPadding),

              // Outlook-style Get Messages Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF005A9E), // Lighter Blue Shade
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  print("Get messages button clicked");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh, size: 18, color: Colors.white),
                    SizedBox(width: 8),
                    Text("Get messages", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),

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
                itemCount: 5,
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
