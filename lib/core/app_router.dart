import 'package:anywhere/constants/route_name.dart';
import 'package:anywhere/constants/route_path_constants.dart';
import 'package:anywhere/screens/master_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../screens/characters/screens/character_detail_screen.dart';

final routerService = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: RouteName.character,
        path: RoutePathConstants.characterPath,
        builder: (BuildContext context, GoRouterState state) =>
            const MasterScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: RoutePathConstants.characterDetailPath,
            name: RouteName.characterDetail,
            builder: ((context, state) => const CharacterDetailScreen()),
          )
        ],
      ),
    ],
  );
});
