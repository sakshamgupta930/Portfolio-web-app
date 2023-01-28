import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/my_buildanimated_text.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
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
                Text(
                  "a student and a application developer specialising in \ndevelopment on the Flutter framework.",
                  style: Responsive.isDesktop(context)
                      ? const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        )
                      : const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                ),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
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
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding / 2),
                      // color: Color(0xFF24242E),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset("assets/icons/linkedin1.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github1.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter1.svg"),
                          ),
                        ],
                      ),
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
