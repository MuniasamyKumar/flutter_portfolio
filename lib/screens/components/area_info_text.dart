import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class AreaInfoText extends StatelessWidget {
  final String? title, text;
  const AreaInfoText({
    super.key,
    this.title,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          )
        ],
      ),
    );
  }
}
