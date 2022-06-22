import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static const List inform = [
    ['welcome_image.jpg', 'Text 1', 'Subtext 1', 'Support 1'],
    ['welcome_image.jpg', 'Text 3', 'Subtext 3', 'Support 3'],
    ['welcome_image.jpg', 'Text 3', 'Subtext 3', 'Support 3'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: inform.length,
        itemBuilder: (_, index) {
          return Body(
            inform: inform[index],
          );
        },
      ),
    );
  }
}
