import 'package:anywhere/core/app_theme/app_colors.dart';
import 'package:anywhere/core/size_config.dart';
import 'package:anywhere/screens/hompe_page_moble_view.dart';
import 'package:anywhere/screens/my_home_page_tablet_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('The device is:$isTablet');
    }
    return Material(
      color: AppTheme.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // isTablet
            // ? const HomePageTabletView()
            //   : const HomePageMobileView();
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.orange,
              ),
            ),
            Flexible(
                flex: 10,
                child: isTablet
                    ? const HomePageTabletView()
                    : const HomePageMobileView())
          ],
        ),
      ),
    );
  }
}
