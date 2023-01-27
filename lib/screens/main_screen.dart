import 'package:flutter/material.dart';
import 'package:portfolio/components/highlight_info.dart';
import 'package:portfolio/components/home_banner.dart';
import 'package:portfolio/components/side_menu.dart';
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
      body: Center(
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeBanner(),
                      HighLightInfo(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "My Projects",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: defaultPadding,
                          mainAxisSpacing: defaultPadding,
                        ),
                        itemCount: 9,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: darkColor,
                          );
                        },
                      ),
                    ],
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
