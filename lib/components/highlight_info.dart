import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/components/heighlight.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/constants.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Responsive.isMobile(context)
          ? const Column(
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 700,
                    text: "+",
                  ),
                  label: 'Connections',
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: 'GitHub Projects',
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 3,
                        text: "+",
                      ),
                      label: 'Internships',
                    ),
                  ],
                )
              ],
            )
          : Responsive.isMobileLarge(context)
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
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
                      ],
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      children: const [
                        HeighLight(
                          counter: AnimatedCounter(
                            value: 3,
                            text: "+",
                          ),
                          label: 'Internships',
                        ),
                      ],
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
