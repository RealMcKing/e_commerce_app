import 'package:e_commerce_app/page/nav_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../colors.dart';

class ButtonWidget extends StatelessWidget {

  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          //TODO
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      },
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: AppColors.mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          fixedSize: const Size(96, 52)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/arrow.svg", height: 20, width: 20)
        ],
      ),
    );
  }
}
