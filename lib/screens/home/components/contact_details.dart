import 'package:flutter/material.dart';
import 'package:flutter_portfolio/functions/launch_url.dart';
import 'package:flutter_svg/svg.dart';

class ContactDetails extends StatelessWidget {
  ContactDetails({
    super.key,
  });

  final Uri linkedin = Uri.parse("https://www.linkedin.com/in/muniasamyk/");
  final Uri github = Uri.parse("https://github.com/MuniasamyKumar");
  final String gmail = "workwithmunees@gmail.com";
  final String phoneNo = "+91 9600278644";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              urlFunction(linkedin);
            },
            icon: SvgPicture.asset("assets/icons/linkedin.svg")),
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
      ],
    );
  }
}
