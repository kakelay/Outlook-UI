import 'package:flutter/material.dart';
import 'package:web_email/models/Email.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../../constants.dart';
import '../../../extensions.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({super.key, this.isActive = false, this.email, this.press});

  final bool isActive;
  final Email? email;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color:
                    isActive
                        ? (isDarkMode ? Colors.blueGrey[700] : Colors.blue[500])
                        : theme.cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(email!.image!),
                        ),
                      ),
                      const SizedBox(width: kDefaultPadding / 2),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: "${email!.name} \n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color:
                                  isActive
                                      ? Colors.white
                                      : theme.textTheme.bodyLarge!.color,
                            ),
                            children: [
                              TextSpan(
                                text: email!.subject,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  color:
                                      isActive
                                          ? Colors.white
                                          : theme.textTheme.bodyMedium!.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            email!.time!,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color:
                                  isActive
                                      ? Colors.white70
                                      : theme.textTheme.bodySmall!.color,
                            ),
                          ),
                          const SizedBox(height: 5),
                          if (email!.isAttachmentAvailable!)
                            WebsafeSvg.asset(
                              "assets/Icons/Paperclip.svg",
                              colorFilter: ColorFilter.mode(
                                isActive ? Colors.white70 : Colors.grey,
                                BlendMode.srcIn,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
                  Text(
                    email!.body!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.5,
                      color:
                          isActive
                              ? Colors.white70
                              : theme.textTheme.bodySmall!.color,
                    ),
                  ),
                ],
              ),
            ).addNeumorphism(
              blurRadius: 15,
              borderRadius: 15,
              offset: const Offset(5, 5),
              topShadowColor: isDarkMode ? Colors.black38 : Colors.white60,
              bottomShadowColor:
                  isDarkMode ? Colors.black54 : Colors.blue.withOpacity(0.15),
            ),
            if (!email!.isChecked!)
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kBadgeColor,
                  ),
                ).addNeumorphism(
                  blurRadius: 4,
                  borderRadius: 8,
                  offset: const Offset(2, 2),
                ),
              ),
            if (email!.tagColor != null)
              Positioned(
                left: 8,
                top: 0,
                child: WebsafeSvg.asset(
                  "assets/Icons/Markup filled.svg",
                  height: 18,
                  colorFilter: ColorFilter.mode(
                    email!.tagColor!,
                    BlendMode.srcIn,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
