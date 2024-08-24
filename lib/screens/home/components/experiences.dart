import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/models/Experience.dart';
import 'package:flutter_portfolio/models/certificate.dart';

import 'experience_card.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Experiences",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                width: defaultPadding / 4,
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 19,
              )
            ],
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demoExperiences.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: ExperienceCard(
                          experience: demoExperiences[index],
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

class Certifications extends StatelessWidget {
  const Certifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Certifications",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                width: defaultPadding / 4,
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 19,
              )
            ],
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demoCertification.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: CertificationCard(
                          certificate: demoCertification[index],
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
