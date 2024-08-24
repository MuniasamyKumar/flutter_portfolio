import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/models/Project.dart';
import 'package:flutter_portfolio/responsive.dart';

import 'project_cart.dart';

class MyProjectList extends StatelessWidget {
  const MyProjectList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
          mobile: ProjectGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectGridView(
            crossAxisCount: 2,
          ),
          tablet: ProjectGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectGridView(),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demoProjects[index],
      ),
    );
  }
}
