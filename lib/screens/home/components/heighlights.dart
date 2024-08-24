import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/animated_counter.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/responsive.dart';
import 'contact_details.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContactDetails(),
                    const HeighLight(
                      label: "Git Repos",
                      counter: AnimatedCounter(
                        value: 15,
                        text: "+",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      label: "Projects",
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                    ),
                    HeighLight(
                      label: "CGPA",
                      counter: AnimatedCounter(
                        value: 7,
                        text: "+",
                      ),
                    ),
                  ],
                )
              ],
            )
          :  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContactDetails(),
                const HeighLight(
                  label: "Git Repos",
                  counter: AnimatedCounter(
                    value: 15,
                    text: "+",
                  ),
                ),
                const HeighLight(
                  label: "Projects",
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                ),
                const HeighLight(
                  label: "CGPA",
                  counter: AnimatedCounter(
                    value: 7,
                    text: "+",
                  ),
                ),
              ],
            ),
    );
  }
}
