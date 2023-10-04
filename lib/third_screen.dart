import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = 'third screen';

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool _selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          children: [
            Image.asset("assets/images/flower.png"),
            Text("Alice Care", style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Articles , video , audio and more ,....',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ChoiceChip(
                        selected: _selected,
                        label: Text('Discover'),
                        labelStyle: TextStyle(color: Colors.black),
                        selectedColor: Colors.indigo,
                        onSelected: (bool selected) {
                          setState(() {
                            _selected = !_selected;
                          });
                        }),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text("News"),
                      selected: _selected,
                      onSelected: (value) {
                        setState(() {
                          _selected = value;
                        });
                      },
                    ),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text("Most Viewed"),
                      selected: _selected,
                      onSelected: (value) {
                        setState(() {
                          _selected = value;
                        });
                      },
                    ),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text("Saved"),
                      selected: _selected,
                      onSelected: (value) {
                        setState(() {
                          _selected = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Hot topics" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("See all" , style: TextStyle(color: Colors.indigo , fontSize: 20 , fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_ios ,color: Colors.indigo),

                ],
              ),
              SizedBox(height: 10),
              CarouselSlider(
                items: [
                Image.asset("assets/images/frame346.png",fit: BoxFit.fill, ),
                Image.asset("assets/images/frame3466530.png",fit: BoxFit.fill, ),
              ],
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
                ),
              ),
              SizedBox(height: 20),
              Text("Get Tips",style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w800)),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(18)),
                  padding: EdgeInsets.all(18),
                  margin: EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/doctor_png_images1.png" ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Connect with doctors & \n  "
                              "get suggestions\n connect now and get\n expire insights ",
                            style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w600),
                          ),
                          ChoiceChip(
                              selected: _selected,
                              label: Text('View Details'),
                              labelStyle: TextStyle(color: Colors.white),
                              selectedColor: Colors.indigo,
                              onSelected: (bool selected) {
                                setState(() {
                                  _selected = !_selected;
                                });
                              }
                              ),
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text("Cycle Phases and peroid" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("See all" , style: TextStyle(color: Colors.indigo , fontSize: 20 , fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_ios ,color: Colors.indigo),

                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.indigo,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Today'),
        BottomNavigationBarItem(icon:Icon(Icons.drag_indicator_sharp) , label: 'Insights'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_outlined), label: 'Chat'),

      ]),
    );
  }
}
