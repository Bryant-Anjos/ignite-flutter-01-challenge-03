import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/person_tile_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';

class StepTwoPage extends StatefulWidget {
  const StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Com quem",
          subtitle: "você quer dividir?",
        ),
        StepInputTextWidget(
          hintText: "Nome da pessoa",
          onChange: (value) {},
        ),
        SizedBox(
          height: 35,
        ),
        PersonTileWidget(
          name: "Bryant dos Anjos",
          isRemovable: false,
        ),
        PersonTileWidget(
          name: "Bryant dos Anjos",
          isRemovable: true,
        ),
        PersonTileWidget(
          name: "Bryant dos Anjos",
          isRemovable: false,
        ),
      ],
    );
  }
}
