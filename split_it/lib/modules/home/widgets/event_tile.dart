import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/shared/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class EventTileWidget extends StatelessWidget {
  final Eventmodel model;

  const EventTileWidget({ 
    Key? key, 
    required this.model,  
  }) : super(key: key);

  IconDollartype get type => model.value >= 0 ? IconDollartype.receive : IconDollartype.send;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconDollarWidget(type: type),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    model.title, 
                    style: AppTheme.textStyles.eventTileTitle,
                  ),
                  subtitle: Text(
                    model.created.toIso8601String(),
                    style: AppTheme.textStyles.eventTileSubTitle,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "R\$ ${model.value}",
                        style: AppTheme.textStyles.eventTileMoney,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "${model.people} amigos",
                        style: AppTheme.textStyles.eventTilePeople,
                      ),
                    ],
                  ),
                ),
                Divider(color: AppTheme.colors.infoCard,)
              ],
            ),
          ),
        )
      ],
    );
  }
}