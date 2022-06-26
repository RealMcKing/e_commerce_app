import 'package:e_commerce_app/page/welcome_page/components/widgets/indicator_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../colors.dart';
import '../../../widgets/app_large_text.dart';
import '../../../widgets/app_text.dart';
import 'widgets/button_widget.dart';

class Body extends StatelessWidget {
  List<String> inform = [];
  int index;

  Body({
    Key? key,
    required this.inform,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/${inform[0]}"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(text: inform[1]),
                AppText(text: inform[2], size: 30),
                const SizedBox(height: 20),
                SizedBox(
                    width: 250,
                    child: AppText(
                        color: AppColors.textColor2,
                        size: 14,
                        text: inform[3])),
                const SizedBox(height: 64),
                const ButtonWidget()
              ],
            ),
            IndicatorWidget(index: index)
          ],
        ),
      ),
    );
  }
}
