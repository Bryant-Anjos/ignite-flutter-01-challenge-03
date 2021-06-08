import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';

import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final CreateSplitController controller;
  final VoidCallback onTapBackButton;
  final int totalPages;

  CreateSplitAppBarWidget({
    required this.controller,
    required this.onTapBackButton,
    required this.totalPages,
  }) : super(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            top: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: BackButton(
                    onPressed: onTapBackButton,
                    color: AppTheme.colors.backButton,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Observer(
                    builder: (context) => Text.rich(
                      TextSpan(
                        text: "0${controller.currentPage + 1}",
                        style: AppTheme.textStyles.stepperIndicatorPrimary,
                        children: [
                          TextSpan(
                            text: " - 0$totalPages",
                            style:
                                AppTheme.textStyles.stepperIndicatorSecondary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}
