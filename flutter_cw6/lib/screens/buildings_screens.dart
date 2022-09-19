import 'package:flutter/material.dart';
import 'package:flutter_cw6/models/buldings_kuw.dart';

class BuildingsScreen extends StatelessWidget {
  const BuildingsScreen({Key? key, required this.buildings}) : super(key: key);

  final Build buildings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(buildings.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.network(
                  buildings.imgUrl,
                  width: 200,
                  height: 150,
                ),
                Text(
                  buildings.name,
                  style: TextStyle(fontSize: 35),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
