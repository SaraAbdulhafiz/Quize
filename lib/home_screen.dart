import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quize/second_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> images = [
    Image.asset("assets/images/vibes.png"),
    Image.asset("assets/images/vibes.png"),
    Image.asset("assets/images/vibes.png"),
    Image.asset("assets/images/vibes.png"),
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset("assets/images/tree.png"),
        title: Text(
          "Mooody",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              label: Text("1"),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hello , Sara Rose',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'How are you feeling today ?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/love.png"),
                      SizedBox(height: 5),
                      Text("Love"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/cool.png"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Cool"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/happy.png"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Happy"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/sad.png"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sad"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 29),
              Row(
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              CarouselSlider(
                items: images,
                options: CarouselOptions(
                  pauseAutoPlayInFiniteScroll: true,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(
                    microseconds: 800,
                  ),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  height: 200,
                  aspectRatio: 80,
                  enlargeCenterPage: true,
                  autoPlayInterval: Duration(seconds: 4),
                  onPageChanged: (index, reason) {
                    myCurrentIndex = index;
                    setState(() {});
                  },
                ),
              ),
              AnimatedSmoothIndicator(
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 5,
                  dotColor: Colors.grey.shade200,
                  paintStyle: PaintingStyle.fill,
                ),
                activeIndex: myCurrentIndex,
                count: images.length,
              ),
              Row(
                children: [
                  Text(
                    "Exsercise",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height:90,
                      color: Color(0xFFF9F5FF),
                      child: Row(
                        children: [
                         Image.asset("assets/images/mind.png"),
                          SizedBox(width: 20,),
                          Text("Relaxation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      height: 90,
                      color: Color(0xFFFDF2FA),
                      child: Row(
                        children: [
                          Image.asset("assets/images/med.png"),
                          SizedBox(width: 20,),
                          Text("Meditation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height:90,
                      color: Color(0xFFFFFAF5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/beathing.png"),
                          SizedBox(width: 20,),
                          Text("Beathing",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      height: 90,
                      color: Color(0xFFF0F9FF),
                      child: Row(
                        children: [
                          Image.asset("assets/images/yoga.png"),
                          SizedBox(width: 20,),
                          Text("Yoga",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFF027A48),
        onTap: (value) {
          Navigator.pushNamed(context, SecondScreen.routeName);
        },
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home_05.png")),
              label: ''),

          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/grid_01.png")),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),

        ],
      ),
    );
  }
}
