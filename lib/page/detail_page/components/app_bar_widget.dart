import 'package:e_commerce_app/colors.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class LocalAppBarWidget extends StatelessWidget {
  const LocalAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SizedBox(
              width: 44,
              height: 44,
              child: TextButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    primary: AppColors.mainTextColor,
                    backgroundColor: AppColors.mainTextColor.withOpacity(0.08),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: Icon(Icons.arrow_back_ios_rounded,
                      color: AppColors.mainColor.withOpacity(0.5), size: 24)),
            ),
            Expanded(child: Container()),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
