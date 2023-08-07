import 'package:anywhere/core/app_theme/app_colors.dart';
import 'package:anywhere/core/size_config.dart';
import 'package:anywhere/provider/characters_provider.dart';
import 'package:anywhere/screens/mobile_home_screen.dart';
import 'package:anywhere/screens/tablet_home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MasterScreen extends ConsumerStatefulWidget {
  const MasterScreen({super.key});

  @override
  ConsumerState<MasterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MasterScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(characterProvider.notifier).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('The device is:$DeviceInfo.isTablet');
    }
    return Material(
      color: AppTheme.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 1,
              child: DeviceInfo.isTablet
                  ? const MobileHomeScreen()
                  : const TabletHomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
