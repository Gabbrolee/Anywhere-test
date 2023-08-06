import 'package:anywhere/core/app_ruter.dart';
import 'package:anywhere/core/app_theme/App_theme.dart';
import 'package:anywhere/core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await dotenv.load(fileName: "assets/.env");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerService);
    final deviceType = DeviceType();
    isTablet = deviceType.deviceType(context);

    return MaterialApp.router(
      title: 'Anywhere test',
      theme: customAppTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
