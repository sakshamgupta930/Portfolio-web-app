import 'package:flutter/material.dart';
import 'package:portfolio/components/project_card.dart';
import 'package:portfolio/models/Project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/constants.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.5,
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          desktop: ProjectsGridView(),
          tablet: ProjectsGridView(
            childAspectRatio: 1,
          ),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.2,
  }) : super(key: key);

  final int crossAxisCount;

  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ProjectCard(
          project: demo_projects[index],
        );
      },
    );
  }
}
