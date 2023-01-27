import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/flutter_codedText.dart';
import 'package:portfolio/screens/constants.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(width: defaultPadding / 2),
          Text("I build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "responsive web and mobile app.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "complete food recipe app with rest api.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "stop watch and Calculator using flutter.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "complete weather app with rest api.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "complete instagram clone with backend.",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(width: defaultPadding / 2),
          FlutterCodedText(),
        ],
      ),
    );
  }
}
