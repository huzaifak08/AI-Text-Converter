import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scantext/Screens/home/home.dart';

class ExtractedText extends StatelessWidget {
  File? image;
  ExtractedText({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Extracted',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: 260,
            color: Colors.red,
            // Import Image from Home:
            child: Image.file(
              image!,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: 300,
            // color: Colors.blue,
            child: Text(
              "Vitae iste iusto sint libero quia. Doloribus voluptatem nihil sit autem amet quia et. Accusantium omnis et nesciunt. Accusamus ea exercitationem ut officiis tempore debitis qui delectus.Eos nihil delectus. Qui porro ut. Debitis sit ut iusto quasi quia maxime labore molestiae consequuntur. Quaerat est blanditiis sunt sunt enim eveniet. Iure aut aperiam.Nobis sit non voluptatibus magnam dolor explicabo. Sint quam sit qui. Ut aspernatur molestiae atque asperiores consequatur commodi voluptas ut. Nobis sit non voluptatibus magnam dolor explicabo. Sint quam sit qui. Ut aspernatur molestiae atque asperiores consequatur commodi voluptas ut.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.copy,
              color: Colors.black,
            ),
            label: Text(
              'Copy Text to Clipboard',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.amber, fixedSize: Size(350, 20)),
          )
        ],
      ),
    );
  }
}
