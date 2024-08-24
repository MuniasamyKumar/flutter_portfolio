import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class AnimatedCounter extends StatelessWidget {
  final int value;
  final String? text;
  const AnimatedCounter({
    super.key,
    required this.value,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
