import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/widgets/bottom_stepper_bar_widget.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  late List<Widget> pages;

  @override
  void initState() {
    pages = [
      StepOnePage(
        onChange: (value) {
          controller.setEventName(value);
          setState(() {});
        },
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
    ];
    super.initState();
  }

  int index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void previousPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBarWidget(
        onTapBackButton: previousPage,
        currentPage: index + 1,
        totalPages: pages.length,
      ),
      body: pages[index],
      bottomNavigationBar: BottomStepperBarWidget(
        enabledButtons: controller.enableNavigateButton(),
        onPressCancel: () {},
        onPressContinue: nextPage,
      ),
    );
  }
}
