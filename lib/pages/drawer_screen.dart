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

  // Profile Header

  Widget buildProfileHeader() {
    return Column(
      children: [
        SizedBox(
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
                margin: const EdgeInsets.only(top: 68, left: 24, bottom: 17),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 24),
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
                        padding: const EdgeInsets.only(left: 16, right: 41),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              alignment: Alignment.topRight,
                              child: const Icon(
                                Icons.close,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 40),
                            const TextDesign(
                              text: "Carol Perry",
                              fontSize: 24,
                              textColor: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            const SizedBox(height: 8),
                            const TextDesign(
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

  //Profile Tags

  Widget buildProfileInfo() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.only(left: 24, right: 24),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
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
              buildProfileTags(profileIc, "Profile", Colors.white),
              buildDivider(),
              buildProfileTags(
                  enrolledContestsIc, "Enrolled Contests", Colors.white),
              const SizedBox(height: 24),
              //Other
              const TextDesign(
                text: "Other",
                fontSize: 12,
                textColor: subTextColor,
                fontWeight: FontWeight.w500,
              ),
              buildProfileTags(aboutUsIc, "About us", Colors.white),
              buildDivider(),
              buildProfileTags(contactUsIc, "Contact us", Colors.white),
              buildDivider(),
              buildProfileTags(notificationSettingsIc, "Notification Settings",
                  Colors.white),
              buildDivider(),
              buildProfileTags(shareTheAppIc, "Share the app", Colors.white),
              buildDivider(),
              buildProfileTags(faqIc, "FAQ’s", Colors.white),
              buildDivider(),
              buildProfileTags(
                  privacyPolicyIc, "T&C and Privacy Policy", Colors.white),
              const SizedBox(height: 24),
              //Action
              const TextDesign(
                text: "Action",
                fontSize: 12,
                textColor: subTextColor,
                fontWeight: FontWeight.w500,
              ),
              buildProfileTags(logoutIc, "Logout", Colors.white),
              // Version Details
              const SizedBox(height: 88),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const TextDesign(
                  text: "App version v1",
                  fontSize: 12,
                  textColor: Color(0xff4A4C54),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 46),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProfileTags(String ic, String tags, Color? color) {
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
              const SizedBox(width: 16),
              TextDesign(
                text: tags,
                fontSize: 16,
                textColor: color,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: color,
            size: 14,
          )
        ],
      ),
    );
  }

  Widget buildDivider() {
    return const Divider(
      height: 1,
      color: dividerColor,
    );
  }
}
