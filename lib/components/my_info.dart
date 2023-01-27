import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/saksham.jpg"),
            ),
            const Spacer(),
            Text(
              "Saksham Gupta",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Text("Student & Flutter Developer"),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
