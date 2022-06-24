import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_text.dart';

class AppButtonsWidget extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  String? text;
  IconData? icon;
  double size;
  bool? isIcon;

  AppButtonsWidget(
      {Key? key,
      this.isIcon = false,
      this.text,
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.borderColor,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Center(child: Icon(icon, color: color)),
    );
  }
}
