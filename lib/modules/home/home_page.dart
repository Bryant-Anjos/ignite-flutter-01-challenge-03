import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/home_app_bar.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(244),
        child: HomeAppBar(
          name: user.name!,
          photoUrl: user.photoUrl!,
        ),
      ),
    );
  }
}
