import 'package:auto_route/auto_route.dart';
import 'package:basketball_news_app/screen/main/main_screen.dart';
import 'package:basketball_news_app/screen/news_info/news_info_screen.dart';
import 'package:basketball_news_app/models/news_model.dart';

import 'package:flutter/material.dart';


part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: NewsInfoRoute.page),

  ];
}