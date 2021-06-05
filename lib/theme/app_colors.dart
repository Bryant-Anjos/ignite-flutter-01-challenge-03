import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get titleAppBar;
  Color get title;
  Color get button;
  Color get border;
  Color get border2;
  Color get icon;
  Color get iconBackground1;
  Color get iconBackground2;
  Color get infoCardTitle;
  Color get infoCardSubtitle1;
  Color get infoCardSubtitle2;
  Color get eventTileTitle;
  Color get eventTileSubitle;
  Color get eventTileMoney;
  Color get eventTilePeople;
  Color get divider;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get titleAppBar => Color(0xFFFFFFFF);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get border => Color(0xFFDCE0E6);

  @override
  Color get border2 => Color(0xFFFFFFFF);

  @override
  Color get icon => Color(0xFFF5F5F5);

  @override
  Color get iconBackground1 => Color(0xFFE9F8F2);

  @override
  Color get iconBackground2 => Color(0xFFFDECEF);

  @override
  Color get infoCardTitle => Color(0xFF666666);

  @override
  Color get infoCardSubtitle1 => Color(0xFF40B28C);

  @override
  Color get infoCardSubtitle2 => Color(0xFFE83F5B);

  @override
  Color get eventTileTitle => Color(0xFF455250);

  @override
  Color get eventTileSubitle => Color(0xFF666666);

  @override
  Color get eventTileMoney => Color(0xFF666666);

  @override
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  Color get divider => Color(0xFF666666);
}
