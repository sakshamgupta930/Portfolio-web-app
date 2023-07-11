import 'package:flutter/material.dart';
import 'package:portfolio/components/highlight_info.dart';
import 'package:portfolio/components/home_banner.dart';
import 'package:portfolio/components/my_projects.dart';
import 'package:portfolio/components/recommend_box.dart';
import 'package:portfolio/components/side_menu.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  // final List<Widget> children;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: const Column(
                      children: [
                        HomeBanner(),
                        HighLightInfo(),
                        MyProjects(),
                        RecommendBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
