import 'package:flutter/material.dart';

import 'package:split_it/modules/create_split/widgets/stepper_next_button.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onPressCancel;
  final VoidCallback onPressContinue;

  const BottomStepperBarWidget({
    Key? key,
    required this.onPressCancel,
    required this.onPressContinue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Container(
        height: 46,
        child: Row(
          children: [
            StepperNextButtonWidget(
              label: "Cancelar",
              onTap: onPressCancel,
            ),
            Container(
              width: 1,
              height: 72,
              color: AppTheme.colors.divider.withOpacity(0.2),
            ),
            StepperNextButtonWidget(
              label: "Continuar",
              onTap: onPressContinue,
            ),
          ],
        ),
      ),
    );
  }
}
