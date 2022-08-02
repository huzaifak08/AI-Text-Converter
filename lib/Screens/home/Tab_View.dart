import 'package:flutter/material.dart';
import 'package:scantext/Screens/home.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'AI Text Converter',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20),
          ),
          centerTitle: true,
          bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Handwritten',
                ),
                Tab(
                  text: 'Image',
                )
              ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Home(),
          ),
          Container(
            child: Home(),
          )
        ]),
      ),
    );
  }
}
