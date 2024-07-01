import 'package:basketball_news_app/router/router.dart';
import 'package:flutter/material.dart';

class BasketballNewsApp extends StatelessWidget {

  BasketballNewsApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'SF Pro Display'),
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
