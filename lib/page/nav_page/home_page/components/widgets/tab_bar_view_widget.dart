import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, top: 10),
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage('assets/images/welcome_one.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
