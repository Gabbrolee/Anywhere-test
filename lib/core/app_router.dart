import 'package:anywhere/screens/master_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../screens/characters/screens/character_detail_screen.dart';


final routerService = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MasterScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'products/:products',
            name: 'products',
            builder: ((context, state) => const CharacterDetailScreen(
                // productName: state.params['products']!,
                )),
          )
        ],
      ),
    ],
  );
  
});
