import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;
  const InfoCardWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  bool get positive => value >= 0;

  TextStyle get textStyle => positive
      ? AppTheme.textStyles.infoCardSubtitle1
      : AppTheme.textStyles.infoCardSubtitle2;

  IconDollarType get iconDollarType =>
      positive ? IconDollarType.receive : IconDollarType.send;

  String get title => positive ? "A receber" : "A pagar";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 168,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundPrimary,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            color: AppTheme.colors.border,
          ),
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconDollarWidget(type: iconDollarType),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTheme.textStyles.infoCardTitle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "R\$ $value",
                style: textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
