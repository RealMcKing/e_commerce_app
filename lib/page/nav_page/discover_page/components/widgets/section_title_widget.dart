import 'package:flutter/cupertino.dart';

import '../../../../../widgets/app_large_text.dart';

class SelectionTitleWidget extends StatelessWidget {
  String text;

  SelectionTitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        child: AppLargeText(text: text));
  }
}
