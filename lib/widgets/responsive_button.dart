import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: AppColors.mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          fixedSize: Size(width!, 60)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: isResponsive == true
            ? [
                const Text('Long text, very long'),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward_sharp)
              ]
            : [const Icon(Icons.arrow_forward_sharp)],
      ),
    );
  }
}
