import 'package:flutter/material.dart';
import 'package:ios_audioservice_test/ui/home/home.dart';
import 'package:ios_audioservice_test/ui/myplayer/player.dart';

import 'ui/myplayer/services/service_locator.dart';

void main() async {
  await setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      routes: {
        Home.routeName: (ctx) => const Home(),
        Player.routeName: (ctx) => const Player(),
      },
    );
  }
}
