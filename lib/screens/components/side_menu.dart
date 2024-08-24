import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/functions/launch_url.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    super.key,
  });
  final Uri linkedin = Uri.parse("https://www.linkedin.com/in/muniasamyk/");
  final Uri github = Uri.parse("https://github.com/MuniasamyKumar");
  final String gmail = "workwithmunees@gmail.com";
  final String phoneNo = "+91 9600278644";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfoText(
                    title: "Residence",
                    text: "India",
                  ),
                  const AreaInfoText(
                    title: "City",
                    text: "Tamilnadu",
                  ),
                  const AreaInfoText(
                    title: "Age",
                    text: "23",
                  ),
                  const Skills(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Coding(),
                  const Knowledges(),
                  const Divider(),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  TextButton(
                      onPressed: () {
                        downloadResume();
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            const SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: defaultPadding),
                    color: const Color(0xff24242E),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              urlFunction(linkedin);
                            },
                            icon:
                                SvgPicture.asset("assets/icons/linkedin.svg")),
                        IconButton(
                            onPressed: () {
                              urlFunction(github);
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg")),
                        IconButton(
                            onPressed: () {
                              launchGmail(gmail);
                            },
                            icon: SvgPicture.asset("assets/icons/gmail.svg")),
                        IconButton(
                            onPressed: () {
                              launchPhoneDialer(phoneNo);
                            },
                            icon: SvgPicture.asset("assets/icons/phone.svg")),
                        const Spacer()
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
