import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:web_email/components/text_widget.dart';
import 'package:web_email/models/Email.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';
import 'components/header.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key, this.email}) : super(key: key);

  final Email? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.white,
        color: Theme.of(context).scaffoldBackgroundColor, // Adapt to theme
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(emails[1].image!),
                      ),
                      SizedBox(width: kDefaultPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: emails[1].name,
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.labelLarge,
                                          children: [
                                            TextSpan(
                                              text:
                                                  "  <kakelay18052002@gmail.com> Kak Elay",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Inspiration for our new home",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.titleLarge,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: kDefaultPadding / 2),
                                Text(
                                  "Today at 15:32",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            SizedBox(height: kDefaultPadding),
                            LayoutBuilder(
                              builder:
                                  (context, constraints) => SizedBox(
                                    width:
                                        constraints.maxWidth > 850
                                            ? 800
                                            : constraints.maxWidth,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          emailDemoText,
                                          style: TextStyle(
                                            height: 1.5,
                                            color: Color(0xFF4D5875),
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        SizedBox(height: kDefaultPadding),
                                        Row(
                                          children: [
                                            Text(
                                              "6 attachments",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),

                                            TextWidget(
                                              'Download All',
                                              fontSize: 16,
                                              color: Colors.blue,
                                              weight: FontWeight.w500,
                                            ),
                                            SizedBox(
                                              width: kDefaultPadding / 4,
                                            ),
                                            WebsafeSvg.asset(
                                              "assets/Icons/Download.svg",
                                              height: 16,
                                            ),
                                          ],
                                        ),
                                        Divider(thickness: 1),

                                        Gap(kDefaultPadding / 2),

                                        SizedBox(
                                          height: 500,
                                          child: MasonryGridView.count(
                                            crossAxisCount: 4,
                                            mainAxisSpacing: 4,
                                            crossAxisSpacing: 4,
                                            itemCount: 4,
                                            itemBuilder: (
                                              BuildContext context,
                                              int index,
                                            ) {
                                              return ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  "assets/logo/Img_$index.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
