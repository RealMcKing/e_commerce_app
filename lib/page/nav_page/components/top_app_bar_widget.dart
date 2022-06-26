import 'package:flutter/material.dart';

class TopAppBarWidget extends StatelessWidget {
  const TopAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Row(
        children: [
          Expanded(child: Container()),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
