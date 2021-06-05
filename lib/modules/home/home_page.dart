import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomePage extends StatelessWidget {
  final events = [
    EventModel(
        title: "Churrasco", created: DateTime.now(), value: 100, people: 2),
    EventModel(title: "Frango", created: DateTime.now(), value: -50, people: 1),
    EventModel(
        title: "Churrasco", created: DateTime.now(), value: 100, people: 2),
    EventModel(title: "Frango", created: DateTime.now(), value: -50, people: 1),
    EventModel(
        title: "Churrasco", created: DateTime.now(), value: 100, people: 2),
    EventModel(title: "Frango", created: DateTime.now(), value: -50, people: 1),
    EventModel(
        title: "Churrasco", created: DateTime.now(), value: 100, people: 2),
    EventModel(title: "Frango", created: DateTime.now(), value: -50, people: 1),
  ];

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {
          print("pressed");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: events
                .map(
                  (e) => EventTileWidget(
                    model: e,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
