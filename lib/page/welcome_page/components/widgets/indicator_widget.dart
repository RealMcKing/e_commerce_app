import 'package:flutter/cupertino.dart';

import '../../../../colors.dart';

class IndicatorWidget extends StatelessWidget {
  int index;

  IndicatorWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (indexDots) {
        return Container(
          margin: const EdgeInsets.only(bottom: 2),
          width: 8,
          height: index == indexDots ? 25 : 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: index == indexDots
                ? AppColors.mainColor
                : AppColors.mainColor.withOpacity(0.3),
          ),
        );
      }),
    );
  }
}
