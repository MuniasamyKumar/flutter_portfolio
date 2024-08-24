import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/functions/launch_url.dart';
import 'package:flutter_portfolio/models/Experience.dart';
import 'package:flutter_portfolio/models/certificate.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            experience.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            experience.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}

class CertificationCard extends StatelessWidget {
  final Certification certificate;

  const CertificationCard({
    super.key,
    required this.certificate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () async {
              await cUrlFunction(certificate.link!);
            },
            child: Row(
              children: [
                Text(
                  certificate.name!,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                const Icon(
                  Icons.arrow_outward_rounded,
                  color: Colors.white,
                  size: 17,
                )
              ],
            ),
          ),
          Text(
            certificate.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            certificate.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
