import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button.dart';
import 'package:split_it/theme/app_theme.dart';

class HomeAppBar extends StatelessWidget {
  final String name;
  final String photoUrl;

  const HomeAppBar({
    Key? key,
    required this.name,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 244,
      decoration: BoxDecoration(
        gradient: AppTheme.gradients.background,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 62,
          left: 19,
          right: 24,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 67,
                  height: 62,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(photoUrl),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      name,
                      style: AppTheme.textStyles.userName,
                    ),
                  ),
                ),
                AddButton(
                  onTap: () {
                    print("Pressed");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
