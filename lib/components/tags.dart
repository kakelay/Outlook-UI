import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            WebsafeSvg.asset("assets/Icons/Angle down.svg", width: 16),
            SizedBox(width: kDefaultPadding / 4),
            WebsafeSvg.asset("assets/Icons/Markup.svg", width: 20),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "Tags",
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(color: kGrayColor),
            ),
            Spacer(),
            MaterialButton(
              padding: EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {},
              child: Icon(Icons.add, color: kGrayColor, size: 20),
            ),
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        buildTag(
          context,
          color: const Color(0xFF23CF91),
          title: "Design",
        ), // Green
        buildTag(
          context,
          color: const Color(0xFF3A6FF7),
          title: "Work",
        ), // Blue
        buildTag(
          context,
          color: const Color(0xFFF3CF50),
          title: "Friends",
        ), // Yellow
        buildTag(
          context,
          color: const Color(0xFF8338E1),
          title: "Family",
        ), // Purple
      ],
    );
  }

  InkWell buildTag(
    BuildContext context, {
    required Color color,
    required String title,
  }) {
    return InkWell(
      onTap: () {
        print('Clicked on $title');
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            WebsafeSvg.asset(
              "assets/Icons/Markup filled.svg",
              height: 18,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.srcIn,
              ), // Apply color
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: color,
              ), // Apply color to text
            ),
          ],
        ),
      ),
    );
  }
}
