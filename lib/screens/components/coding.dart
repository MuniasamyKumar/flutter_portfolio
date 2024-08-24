import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/animated_progress_Indicator.dart';
import 'package:flutter_portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "GetX",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.71,
          label: "Firebase",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.95,
          label: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.81,
          label: "JavaScript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "React Js",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Node Js",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.71,
          label: "Express Js",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.69,
          label: "Mongo DB",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "Bootstrap",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Tailwind CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "Rest APIs",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.69,
          label: "Figma",
        ),
      ],
    );
  }
}
