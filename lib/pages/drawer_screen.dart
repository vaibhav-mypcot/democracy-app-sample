import 'package:democracy_app_sample/theme/colors.dart';
import 'package:democracy_app_sample/utils/constants.dart';
import 'package:democracy_app_sample/widget/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            buildProfileHeader(),
            buildProfileInfo(),
          ],
        ));
  }

  Widget buildProfileHeader() {
    return Column(
      children: [
        Container(
          height: 233.h,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  drawerBackgroundImg,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 116, left: 24, bottom: 17),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      // color: Colors.blueAccent,
                      child: ClipOval(
                        child: SvgPicture.asset(
                          profilePicture,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.amberAccent,
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextDesign(
                              text: "Carol Perry",
                              fontSize: 24,
                              textColor: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            SizedBox(height: 8),
                            TextDesign(
                              text: "+91 8374728384",
                              fontSize: 14,
                              textColor: Colors.white,
                              fontWeight: FontWeight.w200,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  //Personal, Other, Action
  Widget buildProfileInfo() {
    return Container(
      // color: Colors.amberAccent,
      height: 560.h,
      margin: const EdgeInsets.only(left: 24, right: 24),
      child:
          ListView(shrinkWrap: true, scrollDirection: Axis.vertical, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Personal
            const TextDesign(
              text: "Personal",
              fontSize: 12,
              textColor: subTextColor,
              fontWeight: FontWeight.w500,
            ),
            buildProfileTags(profileIc, "Profile"),
            buildDivider(),
            buildProfileTags(enrolledContestsIc, "Enrolled Contests"),
            const SizedBox(height: 24),
            //Other
            const TextDesign(
              text: "Other",
              fontSize: 12,
              textColor: subTextColor,
              fontWeight: FontWeight.w500,
            ),
            buildProfileTags(aboutUsIc, "About us"),
            buildDivider(),
            buildProfileTags(contactUsIc, "Contact us"),
            buildDivider(),
            buildProfileTags(notificationSettingsIc, "Notification Settings"),
            buildDivider(),
            buildProfileTags(shareTheAppIc, "Share the app"),
            buildDivider(),
            buildProfileTags(faqIc, "FAQ’s"),
            buildDivider(),
            buildProfileTags(privacyPolicyIc, "T&C and Privacy Policy"),
            const SizedBox(height: 24),
            //Action
            const TextDesign(
              text: "Action",
              fontSize: 12,
              textColor: subTextColor,
              fontWeight: FontWeight.w500,
            ),
            buildDivider(),
            buildProfileTags(logoutIc, "Logout"),
          ],
        ),
      ]),
    );
  }

  Widget buildProfileTags(String ic, String tags) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                ic,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
              TextDesign(
                text: tags,
                fontSize: 16,
                textColor: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 14,
          )
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Divider(
      height: 1,
      color: Color(0xff272A32),
    );
  }
}
