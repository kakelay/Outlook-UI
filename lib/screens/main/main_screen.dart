import 'package:flutter/material.dart';
import 'package:web_email/components/side_menu.dart';
import 'package:web_email/responsive.dart';
import 'package:web_email/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  final VoidCallback toggleTheme;

  const MainScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    // It provides us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('OutLook'),
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Responsive(
        // Let's work on our mobile part
        mobile: ListOfEmails(),
        tablet: Row(
          children: [
            Expanded(flex: 6, child: ListOfEmails()),
            Expanded(flex: 9, child: EmailScreen()),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(flex: _size.width > 1340 ? 2 : 4, child: SideMenu()),
            Expanded(flex: _size.width > 1340 ? 3 : 5, child: ListOfEmails()),
            Expanded(flex: _size.width > 1340 ? 8 : 10, child: EmailScreen()),
          ],
        ),
      ),
    );
  }
}
