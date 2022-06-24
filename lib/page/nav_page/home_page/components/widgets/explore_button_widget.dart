import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../colors.dart';
import '../../../../../widgets/app_text.dart';

class ExploreTextWidget extends StatelessWidget {
  List<dynamic> item = [];

  ExploreTextWidget({Key? key, required this.item}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     margin: const EdgeInsets.only(right: 20),
  //     child: Column(
  //       children: [
  //         Container(
  //             width: 80,
  //             height: 80,
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(30),
  //                 color: item[0].withOpacity(0.08)),
  //             child: Icon(item[1], color: item[0].withOpacity(0.5), size: 40)),
  //         AppText(text: item[2], color: AppColors.textColor2),
  //       ],
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: item[0],
                backgroundColor: item[0].withOpacity(0.08),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                fixedSize: const Size(80, 80),
              ),
              child: Icon(item[1], color: item[0].withOpacity(0.5), size: 40)),
          AppText(text: item[2], color: AppColors.textColor2),
        ],
      ),
    );
  }
}
