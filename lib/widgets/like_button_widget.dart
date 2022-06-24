import 'package:flutter/material.dart';

import '../colors.dart';

class LikeButtonWidget extends StatelessWidget {
  bool isResponsive = false;

  LikeButtonWidget(
      {Key? key,
      required this.isResponsive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: isResponsive ? AppColors.mainColor : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          fixedSize: const Size(64, 64),
        ),
        child: isResponsive
            ? const Icon(Icons.favorite_outlined, color: Colors.white)
            : const Icon(Icons.favorite_border_outlined,
                color: AppColors.textColor1));
  }
}
