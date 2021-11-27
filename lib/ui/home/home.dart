import 'package:flutter/material.dart';
import 'package:ios_audioservice_test/ui/myplayer/player.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: OutlinedButton(
            child: const Text(
              "Go to Player",
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Player()),
                  
                ),
          ),
        ));
  }
}
