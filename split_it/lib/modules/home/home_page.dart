import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/event_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final events = [
    Eventmodel(
      created: DateTime.now(),
      title: "Churrasco",
      people: 1,
      value: 32.0
    ),
    Eventmodel(
      created: DateTime.now(),
      title: "Churrasco",
      people: 1,
      value: 32.0
    ),
    Eventmodel(
      created: DateTime.now(),
      title: "Churrasco",
      people: 1,
      value: 32.0
    ),
    Eventmodel(
      created: DateTime.now(),
      title: "Churrasco",
      people: 1,
      value: 32.0
    ),
    Eventmodel(
      created: DateTime.now(),
      title: "Churrasco",
      people: 1,
      value: 32.0
    ),
    Eventmodel(
      created: DateTime.now(),
      title: "Churrasco",
      people: 1,
      value: 32.0
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final UserModel user = ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      appBar: AppBarWidget(
        user: user, 
        onTapAddButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...events.map((e) => EventTileWidget(
                model: e
              )).toList(),
            ],
          ),
        ),
      ),
    );
  }
}