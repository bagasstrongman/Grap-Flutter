import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_grep_clone/home_page.dart';

class ImageCarouselExample extends StatefulWidget {
  const ImageCarouselExample({Key? key}) : super(key: key);

  @override
  _ImageCarouselExampleState createState() => _ImageCarouselExampleState();
}

class _ImageCarouselExampleState extends State<ImageCarouselExample> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'assets/Banner1.png',
    'assets/Banner2.png',
    'assets/Banner3.png',
    'assets/Banner4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                initialPage: 0,
                autoPlay: true,
                reverse: false,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                onPageChanged: (index, reason) => _currentIndex = index,
                // pauseAutoPlayOnTouch: Duration(seconds: 10),
                // scrollDirection: Axis.horizontal,
              ),
              items: imageList
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: EdgeInsets.only(
                          top: 10.0,
                          bottom: 20.0,
                        ),
                        elevation: 6.0,
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.map((urlOfItem) {
                int index = imageList.indexOf(urlOfItem);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color.fromRGBO(0, 0, 0, 0.8)
                        : Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 100)),
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(Icons.apps),
                  backgroundColor: Colors.red.shade800,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


