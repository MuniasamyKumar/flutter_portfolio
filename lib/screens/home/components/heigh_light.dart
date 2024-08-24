import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class HeighLight extends StatelessWidget {
  final Widget counter;
  final String? label;
  const HeighLight({
    super.key,
    required this.counter,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(label!, style: Theme.of(context).textTheme.titleSmall)
      ],
    );
  }
}
