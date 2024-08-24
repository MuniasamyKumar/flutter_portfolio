import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_svg/svg.dart';

class KnowledgeText extends StatelessWidget {
  final String text;

  const KnowledgeText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "Knowledges",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const KnowledgeText(
          text: "Data Structures & Algorithms",
        ),
        const KnowledgeText(
          text: "OOPS",
        ),
        const KnowledgeText(
          text: "Mobile App Development",
        ),
        const KnowledgeText(
          text: "Web Development",
        ),
        const KnowledgeText(
          text: "Git & GitHub",
        )
      ],
    );
  }
}
