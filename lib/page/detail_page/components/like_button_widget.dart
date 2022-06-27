import 'package:flutter/material.dart';

import '../../../colors.dart';

class LikeButtonWidget extends StatelessWidget {
  bool isLiked = false;

  LikeButtonWidget({Key? key, required this.isLiked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: isLiked ? AppColors.mainColor : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          fixedSize: const Size(64, 64),
        ),
        child: isLiked
            ? const Icon(Icons.favorite_outlined, color: Colors.white)
            : const Icon(Icons.favorite_border_outlined,
                color: AppColors.textColor1));
  }
}
