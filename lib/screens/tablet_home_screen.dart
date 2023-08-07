import 'package:flutter/material.dart';
import 'package:anywhere/core/app_theme/app_colors.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
              flex: 4,
              child: Container(
                color: Colors.blue,
              )),
          Flexible(
              flex: 6,
              child: Container(
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
