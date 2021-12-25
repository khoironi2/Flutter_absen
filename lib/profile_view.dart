import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static String tag = 'Profil-Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
              width: 408.0,
              height: 100.0,
              child: const DecoratedBox(
                decoration: const BoxDecoration(color: Colors.blue),
              )),
          const SizedBox(
              width: 408.0,
              height: 100.0,
              child: const DecoratedBox(
                decoration: const BoxDecoration(color: Colors.red),
              )),
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              'https://darimu.garisdesign.com/assets/img/logo/logo-banten_png.png',
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
        ]

            // height: 200.0,
            // width: 200.0,
            // decoration: new BoxDecoration(color: Colors.red),
            ),
      ),
    );
  }
}
