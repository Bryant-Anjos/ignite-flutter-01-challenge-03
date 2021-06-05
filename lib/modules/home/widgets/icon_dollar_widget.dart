import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

enum IconDollarType { send, receive }

class IconDollarWidget extends StatelessWidget {
  final IconDollarType type;
  const IconDollarWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  get imagePath =>
      "assets/images/dollar-${type == IconDollarType.receive ? 'receive' : 'send'}-arrow.png";
  Color get backgroundColor => type == IconDollarType.receive
      ? AppTheme.colors.iconBackground1
      : AppTheme.colors.iconBackground2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 48,
      height: 48,
      child: Center(
        child: Image.asset(
          imagePath,
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
