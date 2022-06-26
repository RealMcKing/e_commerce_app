import 'package:e_commerce_app/widgets/app_large_text.dart';
import 'package:e_commerce_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../../../../../colors.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 10),
      width: 200,
      height: 270,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome_one.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [0.1, 0.9],
                  colors: [
                    AppColors.mainColor.withOpacity(0.6),
                    AppColors.mainColor.withOpacity(0.1)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(text: 'Text', size: 16, color: Colors.white),
                Row(
                  children: [
                    const Icon(Icons.location_on_rounded,
                        color: Colors.white, size: 16),
                    const SizedBox(width: 4),
                    AppText(
                      text: 'Your ass',
                      color: Colors.white,
                      size: 12,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
