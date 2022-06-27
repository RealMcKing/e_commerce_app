import 'package:flutter/material.dart';

import 'components/body.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static const List inform = [
    [
      'welcome_one.png',
      'Welcome',
      'Store App',
      'Wadasda asdassad asdasdasd asdasda asdasdqwe asdasdqw asdasdasd asdasda asdasdqwe asdasdqw'
    ],
    ['welcome_two.png', 'Text 2', 'Subtext 2', 'Support 2'],
    ['welcome_three.png', 'Text 3', 'Subtext 3', 'Support 3'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: inform.length,
        itemBuilder: (_, index) {
          return Body(inform: inform[index], index: index);
        },
      ),
    );
  }
}
