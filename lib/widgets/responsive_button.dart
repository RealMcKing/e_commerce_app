import 'package:e_commerce_app/page/nav_page/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
      },
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: AppColors.mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          fixedSize: Size(width!, 64)),
      child: Row(
        mainAxisAlignment: isResponsive == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: isResponsive == true
            ? [
                const Text(
                  'Long text, very long',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 10),
                SvgPicture.asset(
                  "assets/icons/arrow.svg",
                  height: 24,
                  width: 24,
                ),
              ]
            : [
                SvgPicture.asset(
                  "assets/icons/arrow.svg",
                  height: 24,
                  width: 24,
                ),
              ],
      ),
    );
  }
}
