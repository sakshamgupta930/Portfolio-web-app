import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/components/heighlight.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 700,
              text: "+",
            ),
            label: 'Connections',
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 10,
              text: "+",
            ),
            label: 'GitHub Projects',
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 3,
              text: "+",
            ),
            label: 'Internships',
          ),
        ],
      ),
    );
  }
}
