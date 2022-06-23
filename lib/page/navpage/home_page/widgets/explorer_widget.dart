import 'package:flutter/material.dart';

import '../../../../colors.dart';
import '../../../../widgets/app_large_text.dart';
import '../../../../widgets/app_text.dart';

class ExplorerWidget extends StatelessWidget {
  const ExplorerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppLargeText(text: 'Explore text', size: 22),
          TextButton(
            onPressed: () {},
            child: AppText(text: 'See All', color: AppColors.textColor1),
          )
        ],
      ),
    );
  }
}
