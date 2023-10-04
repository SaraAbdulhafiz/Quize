import 'package:flutter/material.dart';
import 'package:quize/third_screen.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = 'second screen';

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/ellipse10.png"),
                    Column(
                      children: [
                        Text("Hello, Jade",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20)),
                        Text("Ready to workout ?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Badge(
                          smallSize: 12,
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                ImageIcon(AssetImage("assets/images/heart.png"),
                                    size: 60, color: Color(0xFF7F56D9)),
                                Text("Heart Rate",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Text("81 BPM", style: TextStyle(fontSize: 25)),
                          ],
                        ),
                        SizedBox(
                            height: 55,
                            child: VerticalDivider(
                                color: Colors.blueGrey, thickness: 2)),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.format_list_bulleted),
                                Text("To_do",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Text("32.5 %", style: TextStyle(fontSize: 28)),
                          ],
                        ),
                        SizedBox(
                            height: 55,
                            child: VerticalDivider(
                                thickness: 2, color: Colors.blueGrey)),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.local_fire_department_outlined,
                                    color: Color(0xFF7F56D9)),
                                Text("Calo",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Text("1000 Cal", style: TextStyle(fontSize: 28)),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "WorkOut Programs",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              TabBar(
                indicatorColor: Colors.indigo,
                tabs: [
                  Tab(
                      child: Text(
                    "All Type",
                    style: TextStyle(color: Colors.indigo, fontSize: 16),
                  )),
                  Tab(
                      child: Text(
                    "Full Body",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                  )),
                  Tab(
                    child: Text(
                      "Upper",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Lower",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(18)),
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChoiceChip(
                        padding: EdgeInsets.all(16),
                        backgroundColor: Colors.white,
                        labelStyle: TextStyle(color: Colors.black),
                        iconTheme: IconThemeData(
                          color: Colors.transparent,
                        ),
                        label: Text("7 days"),
                        selected: false),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Morning Yoga", style: TextStyle(fontSize: 30)),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Improve mental focus .",
                        style: TextStyle(fontSize: 15)),
                    Row(children: [
                      ImageIcon(
                        AssetImage("assets/images/icon.png"),
                      ),
                      Text("30 mins", style: TextStyle(color: Colors.black)),
                      SizedBox(width: 80),
                      Image.asset("assets/images/[removal2.png"),
                    ]),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(18)),
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChoiceChip(
                        padding: EdgeInsets.all(16),
                        label: Text("3 days",
                            style: TextStyle(color: Colors.black)),
                        selected: false),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Plank Exercise", style: TextStyle(fontSize: 30)),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Improve posture and stability .",
                        style: TextStyle(fontSize: 15)),
                    Row(children: [
                      ImageIcon(
                        AssetImage("assets/images/icon.png"),
                      ),
                      Text("30 mins"),
                      SizedBox(width: 50),
                      Image.asset("assets/images/pngwing1.png"),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.indigo,
            onTap: (value) {
              Navigator.pushNamed(context, ThirdScreen.routeName);
            },
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/icon12.png"),) , label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]),
      ),
    );
  }
}
