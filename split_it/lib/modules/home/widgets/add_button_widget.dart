import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const AddButtonWidget({ Key? key, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(color: AppTheme.colors.backgroundPrimary.withOpacity(0.25))
          )
        ),
        width: 50,
        height: 50,
        child: Center(
          child: Icon(Icons.add, color: AppTheme.colors.backgroundPrimary,),
        ),
      ),
    );
  }
}