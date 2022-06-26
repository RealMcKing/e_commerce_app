import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../colors.dart';
import '../../../../../widgets/app_text.dart';

class ExploreTextWidget extends StatelessWidget {
  List<dynamic> item = [];

  ExploreTextWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 10),
      child: Column(
        children: [
          TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: item[0],
                backgroundColor: item[0].withOpacity(0.08),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                fixedSize: const Size(64, 64),
              ),
              child: Icon(item[1], color: item[0].withOpacity(0.5), size: 36)),
          const SizedBox(height: 8),
          AppText(text: item[2], color: AppColors.textColor2, size: 15),
        ],
      ),
    );
  }
}
