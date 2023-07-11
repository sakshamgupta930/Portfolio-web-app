import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/my_buildanimated_text.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  double aspectRatio = 0;
  @override
  Widget build(BuildContext context) {
    Responsive.isMobile(context) ? aspectRatio = 1.5 : aspectRatio = 3;
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage(
              "assets/images/unsplash.jpg",
            ),
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.60),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I'm Saksham Gupta",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (!Responsive.isMobileLarge(context))
                  Text(
                    "A student and a application developer specialising in \ndevelopment on the Flutter framework.",
                    style: Responsive.isDesktop(context)
                        ? const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          )
                        : const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                  ),
                if (!Responsive.isMobile(context))
                  const SizedBox(height: defaultPadding),
                const MyBuildAnimatedText(),
                Responsive.isMobileLarge(context)
                    ? const SizedBox(height: defaultPadding / 4)
                    : const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (!Responsive.isMobileLarge(context))
                      ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding,
                          ),
                          backgroundColor: primaryColor,
                        ),
                        child: const Text(
                          "EXPLORE NOW",
                          style: TextStyle(color: darkColor),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () => launch(
                              'https://www.linkedin.com/in/saksham-gupta-496560234'),
                          icon: SvgPicture.asset("assets/icons/linkedin1.svg"),
                        ),
                        IconButton(
                          onPressed: () =>
                              launch('https://github.com/sakshamgupta930'),
                          icon: SvgPicture.asset("assets/icons/github1.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Dont have twitter account"),
                              ),
                            );
                          },
                          icon: SvgPicture.asset("assets/icons/twitter1.svg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
