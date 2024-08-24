import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/models/Project.dart';
import 'package:flutter_portfolio/responsive.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            style: const TextStyle(height: 1.2),
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          TextButton(
              onPressed: () {}, 
              child: const Text(
                "ReadMore >>",
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}
