import 'package:anywhere/core/app_theme/app_colors.dart';
import 'package:anywhere/core/size_config.dart';
import 'package:anywhere/screens/mobile_home_screen.dart';
import 'package:anywhere/screens/tablet_home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MasterScreen extends StatelessWidget {
  const MasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('The device is:$DeviceType.isTablet');
    }
    return Material(
      color: AppTheme.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 1,
              child: DeviceType.isTablet
                  ? const MobileHomeScreen()
                  : const TabletHomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
