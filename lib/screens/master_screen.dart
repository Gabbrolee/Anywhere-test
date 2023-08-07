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
      print('The device is:$isTablet');
    }
    return Material(
      color: AppTheme.white,
      child: SafeArea(
        child: !isTablet ?
              const TabletHomeScreen() :
              const MobileHomeScreen(),
        // child: Column(
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     /// TODO: remove unused widget
        //     // isTablet
        //     // ? const HomePageTabletView()
        //     //   : const HomePageMobileView();
        //     // Flexible(
        //     //   flex: 1,
        //     //   child: Container(
        //     //     color: Colors.orange,
        //     //   ),
        //     // ),
        //     Flexible(
        //         flex: 10,
        //         child: !isTablet
        //             ? const HomePageTabletView()
        //             : const HomePageMobileView())
        //   ],
        // ),
      ),
    );
  }
}
