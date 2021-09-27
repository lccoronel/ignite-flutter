import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appBar;
  TextStyle get infoCard;
  TextStyle get infoCardSubTitle;
  TextStyle get infoCardSubTitle2;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;
  TextStyle get eventTileSubTitle;
  TextStyle get eventTileTitle;
}

class AppTextStylesDefault implements AppTextStyles{
  @override
  TextStyle get button => GoogleFonts.inter(
    color: AppTheme.colors.button,
    fontSize: 16,
    fontWeight: FontWeight.w400
  );

  @override
  TextStyle get title => GoogleFonts.montserrat(
    color: AppTheme.colors.title,
    fontSize: 40,
    fontWeight: FontWeight.w700
  );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
    color: AppTheme.colors.backgroundPrimary,
    fontSize: 24,
    fontWeight: FontWeight.w700
  );

  @override
  TextStyle get infoCard => GoogleFonts.inter(
    color: AppTheme.colors.infoCard,
    fontSize: 14,
    fontWeight: FontWeight.w400
  );

  @override
  TextStyle get infoCardSubTitle => GoogleFonts.inter(
    color: AppTheme.colors.iconSubTitleGreen,
    fontSize: 20,
    fontWeight: FontWeight.w600
  );

  @override
  TextStyle get infoCardSubTitle2 => GoogleFonts.inter(
    color: AppTheme.colors.iconSubTitleRed,
    fontSize: 20,
    fontWeight: FontWeight.w600
  );

  @override
  TextStyle get eventTileMoney => GoogleFonts.inter(
    color: AppTheme.colors.titleEvent,
    fontSize: 14,
    fontWeight: FontWeight.w400
  );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
    color: AppTheme.colors.infoCard,
    fontSize: 12,
    fontWeight: FontWeight.w400
  );

  @override
  TextStyle get eventTileSubTitle => GoogleFonts.inter(
    color: AppTheme.colors.infoCard,
    fontSize: 12,
    fontWeight: FontWeight.w400
  );

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
    color: AppTheme.colors.titleEvent,
    fontSize: 16,
    fontWeight: FontWeight.w600
  );
}