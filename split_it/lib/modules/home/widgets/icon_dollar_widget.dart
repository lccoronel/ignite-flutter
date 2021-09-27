import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

enum IconDollartype { send, receive }

class IconDollarWidget extends StatelessWidget {
  final IconDollartype type;

  const IconDollarWidget({ Key? key, required this.type }) : super(key: key);
  
  Color get background => type == IconDollartype.receive ? AppTheme.colors.iconBackgroundGreen : AppTheme.colors.iconBackgroundRed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      width: 48,
      height: 48,
      child: Center(child: Image.asset("assets/images/google.png"),),
    );
  }
}