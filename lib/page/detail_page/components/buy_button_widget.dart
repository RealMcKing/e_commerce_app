import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../colors.dart';

class BuyButtonWidget extends StatelessWidget {
  double width;

  BuyButtonWidget({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: AppColors.mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          fixedSize: Size(width, 64)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Long text, very long',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(width: 10),
        SvgPicture.asset(
          "assets/icons/arrow.svg",
          height: 24,
          width: 24,
        ),
      ]),
    );
  }
}
