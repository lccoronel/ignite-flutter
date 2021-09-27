import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

import 'info_card_widget.dart';

class AppBarWidget extends PreferredSize {
  final VoidCallback onTapAddButton;
  final UserModel user;
  
  AppBarWidget({ required this.user, required this.onTapAddButton }) : super(
    child: Stack(
      children: [
        Container(
          height: 240,
          color: AppTheme.colors.backgroundSecundary,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 62, ),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(user.photoUrl!, width: 50, height: 50,)
                ),
                title: Text(user.name!, style: AppTheme.textStyles.appBar,),
                trailing: AddButtonWidget(onTap: () {},),
              ),
            ),
            SizedBox(height: 36,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCardWidget(value: 145,),
                InfoCardWidget(value: -145,),
              ],
            ),
          ],
        ),
      ],
    ),
    preferredSize: Size.fromHeight(298)
  );
}