import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onTapBackButton;
  final int currentPage;
  final int totalPages;

  CreateSplitAppBarWidget({
    required this.onTapBackButton,
    required this.currentPage,
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
                  child: Text.rich(
                    TextSpan(
                      text: "0$currentPage",
                      style: AppTheme.textStyles.stepperIndicatorPrimary,
                      children: [
                        TextSpan(
                          text: " - 0$totalPages",
                          style: AppTheme.textStyles.stepperIndicatorSecondary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}
