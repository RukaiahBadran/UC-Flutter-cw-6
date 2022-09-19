import 'package:flutter/material.dart';
import 'package:flutter_cw6/models/buldings_kuw.dart';
import 'package:flutter_cw6/screens/buildings_screens.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var buildings = [
    Build(
      name: 'أبراج الكويت',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    ),
    Build(
      name: 'برج التحرير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    ),
    Build(
      name: 'المسجد الكبير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuwait LandMarks'),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuildingsScreen(
                      buildings: buildings[index],
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.network(
                    buildings[index].imgUrl,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      buildings[index].name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
