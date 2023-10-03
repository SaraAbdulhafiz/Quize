import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:AppBar(
          title: Text("Test Widgest"),
          bottom:
          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              Container(
                color: Colors.brown,
                child: Tab(
                  icon: Icon(Icons.home),
                ),
              ),
              Container(
                color: Colors.pinkAccent,
                child:Text("dfdjd"),
              ),
              Container(
                color: Colors.black26,
                child: Tab(
                  icon: Icon(Icons.person),
                ),
              ),
            ]),
      ),
    );
  }
}
