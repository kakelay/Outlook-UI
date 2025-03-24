import 'package:flutter/material.dart';
import 'package:web_email/components/delete_confirmation_dialog.dart';
import 'package:web_email/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          if (Responsive.isMobile(context)) BackButton(),
          IconButton(
            color: Colors.red,
            icon: WebsafeSvg.asset("assets/Icons/Trash.svg", width: 24),
            onPressed: () {
              _showDeleteConfirmationDialog(context);
            },
          ),
          IconButton(
            icon: WebsafeSvg.asset("assets/Icons/Reply.svg", width: 24),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset("assets/Icons/Reply all.svg", width: 24),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset("assets/Icons/Transfer.svg", width: 24),
            onPressed: () {},
          ),
          Spacer(),
          if (Responsive.isDesktop(context))
            IconButton(
              icon: WebsafeSvg.asset("assets/Icons/Printer.svg", width: 24),
              onPressed: () {},
            ),
          IconButton(
            icon: WebsafeSvg.asset("assets/Icons/Markup.svg", width: 24),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset("assets/Icons/More vertical.svg", width: 24),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  // Method to show the DeleteConfirmationDialog widget
  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent closing dialog by tapping outside
      builder: (BuildContext context) {
        return DeleteConfirmationDialog(
          onCancel: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          onDelete: () {
            Navigator.of(context).pop(); // Close the dialog
            // Action for deleting the email
            print("Email deleted");

            // Action 8: Notify user after deletion
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("The email has been deleted.")),
            );
          },
        );
      },
    );
  }
}
