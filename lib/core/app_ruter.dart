import 'package:anywhere/screens/characters/hompe_page.dart';
import 'package:anywhere/screens/hompe_page_moble_view.dart';
import 'package:anywhere/screens/my_home_page_tablet_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

import '../screens/characters/character_detail.dart';


final routerService = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'products/:products',
            name: 'products',
            builder: ((context, state) => const CharacterDetail(
                // productName: state.params['products']!,
                )),
          )
        ],
      ),
    ],
  );
  ;
});
