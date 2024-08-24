import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/animated_progress_Indicator.dart';
import 'package:flutter_portfolio/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Row(
          children: [
            Expanded(
                child: AnimatedProgressIndicator(
              percentage: 0.87,
              label: "Flutter",
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedProgressIndicator(
              percentage: 0.79,
              label: "Java",
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedProgressIndicator(
              percentage: 0.70,
              label: "MERN",
            )),
          ],
        )
      ],
    );
  }
}
