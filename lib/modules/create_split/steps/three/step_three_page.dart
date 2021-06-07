import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';

class StepThreePage extends StatefulWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Qual ou quais",
          subtitle: "ítens você quer dividir?",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                ),
                child: Text("1"),
              ),
              Expanded(
                flex: 2,
                child: StepInputTextWidget(
                  padding: EdgeInsets.zero,
                  onChange: (value) {},
                  hintText: "Ex: Picanha",
                  align: TextAlign.start,
                ),
              ),
              Expanded(
                child: StepInputTextWidget(
                  padding: EdgeInsets.zero,
                  onChange: (value) {},
                  hintText: "R\$ 0,00",
                  align: TextAlign.start,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
