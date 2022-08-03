import 'package:flutter/material.dart';
import 'package:scantext/Screens/home/home.dart';

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

          // Drawer Icon Color
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: [
              ListTile(
                trailing: const Icon(Icons.cancel),
                iconColor: Colors.white,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const ListTile(
                title: Text('Home'),
                textColor: Colors.white,
                leading: Icon(Icons.home),
                iconColor: Colors.white,
              ),
              const ListTile(
                title: Text('Conversation History'),
                textColor: Colors.white,
                leading: Icon(Icons.history),
                iconColor: Colors.white,
              ),
              const ListTile(
                title: Text('Rate us'),
                textColor: Colors.white,
                leading: Icon(Icons.rate_review),
                iconColor: Colors.white,
              ),
              const ListTile(
                title: Text('Terms of Service'),
                textColor: Colors.white,
                leading: Icon(Icons.rule),
                iconColor: Colors.white,
              )
            ],
          ),
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
