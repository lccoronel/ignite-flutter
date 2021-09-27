import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecundary;
  Color get title;
  Color get button;
  Color get infoCard;
  Color get border;
  Color get iconBackgroundGreen;
  Color get iconBackgroundRed;
  Color get iconSubTitleGreen;
  Color get iconSubTitleRed;
  Color get titleEvent;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecundary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get border => Color(0xFFdedede);

  @override
  Color get iconBackgroundGreen => Color(0xFFe9f8f2);

  @override
  Color get iconBackgroundRed => Color(0xFFfdecef);

  @override
  Color get infoCard => Color(0xFF666666);

  @override
  Color get iconSubTitleGreen => Color(0xFF40b28c);

  @override
  Color get iconSubTitleRed => Color(0xFFe83f5b);

  @override
  Color get titleEvent => Color(0xFF455250);
}