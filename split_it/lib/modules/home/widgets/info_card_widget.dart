import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;

  const InfoCardWidget({ Key? key, required this.value }) : super(key: key);

  TextStyle get textStyle => value >= 0 ? AppTheme.textStyles.infoCardSubTitle : AppTheme.textStyles.infoCardSubTitle2;
  IconDollartype get iconDollarType => value >= 0 ? IconDollartype.receive : IconDollartype.send;
  String get title => value >= 0 ? "A receber" : "A pagar";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 168,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundPrimary,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(BorderSide(color: AppTheme.colors.border))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconDollarWidget(type: iconDollarType,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTheme.textStyles.infoCard,),
              SizedBox(height: 4,),
              Text("R\$ ${value}", style: textStyle),
            ]
          ),
        ],
      ),
    );
  }
}