import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class AddButton extends StatelessWidget {
  final VoidCallback? onTap;

  const AddButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color: AppTheme.colors.border,
            ),
          ),
        ),
        child: Icon(
          Icons.add,
          color: AppTheme.colors.border,
        ),
      ),
    );
  }
}
