import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

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
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.greenAccent[700],
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Container(
            //padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(top: 15),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.qr_code_scanner_rounded,
                    color: Colors.grey,
                  ),
                  hintText: "Offers, food, and places to go",
                  //alignLabelWithHint: Alignment.center,
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 5,
                  ),
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.48,
                  height: MediaQuery.of(context).size.width * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20)
                              //color: Colors.grey,
                              //shape: BoxShape.circle(Colors.accents),
                              ),
                          child: Icon(
                            Icons.account_balance_wallet,
                            color: Colors.greenAccent[700],
                            size: 20,
                          )),
                      Text(
                        " IDR ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10),
                      ),
                      Text(
                        "675.000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey[300],
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 5,
                  ),
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.48,
                  height: MediaQuery.of(context).size.width * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(20)
                            //color: Colors.grey,
                            //shape: BoxShape.circle(Colors.accents),
                            ),
                        child: Icon(
                          Icons.star_rate_sharp,
                          color: Colors.grey[700],
                          size: 23,
                        ),
                      ),
                      Text(
                        " 3.200",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        " Points ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey[300],
                            size: 15,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/Food.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("Food")
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/Mart.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("Mart")
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/Delivery.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("Delivery")
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/Transport.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("Delivery")
                          ]),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/Insurance.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("Insurance")
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/Gift.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("Gift Cards")
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/Health.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("Health")
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Image(
                              image: AssetImage("assets/More.png"),
                              width: 90,
                              height: 90,
                            ),
                            Text("More")
                          ]),
                        )
                      ],
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(
                //left: 5,
                top: 5,
              ),
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.97,
              height: MediaQuery.of(context).size.height * 1.25,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 150.0,
                          initialPage: 0,
                          autoPlay: true,
                          reverse: false,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlayInterval: Duration(seconds: 2),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 2000),
                          onPageChanged: (index, reason) =>
                              _currentIndex = index,
                          // pauseAutoPlayOnTouch: Duration(seconds: 10),
                          // scrollDirection: Axis.horizontal,
                        ),
                        items: imageList
                            .map(
                              (item) => Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  //shadowColor: Colors.grey,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    child: Image.asset(
                                      item,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Keep Discovering",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.46,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          //shape: BoxShape.circle(Colors.accents),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0,
                                        2.0), // shadow direction: bottom right
                                  )
                                ],
                              ),
                              //width: 500,
                              //margin: EdgeInsets.all(10),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                      image:
                                          AssetImage("assets/Spaghettii.jpg"),
                                      fit: BoxFit.fitWidth),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),

                                      color: Colors.white,
                                      //shape: BoxShape.circle(Colors.accents),
                                    ),
                                    child: Container(
                                        margin: EdgeInsets.all(10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                "Order From Your Favorite Restaurant",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.restaurant,
                                                    size: 12,
                                                    color: Colors.grey,
                                                  ),
                                                  Text(
                                                    " GrapFood",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              )
                                            ])),
                                  ),
                                )
                              ]),
                            ),
                            //Image(image: AssetImage("assets/Spaghetti.jpg"))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.46,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          //shape: BoxShape.circle(Colors.accents),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0,
                                        2.0), // shadow direction: bottom right
                                  )
                                ],
                              ),
                              //width: 500,
                              //margin: EdgeInsets.all(10),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                      image:
                                          AssetImage("assets/Vaksinasi.jpeg"),
                                      fit: BoxFit.fitWidth),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),

                                      color: Colors.white,
                                      //shape: BoxShape.circle(Colors.accents),
                                    ),
                                    child: Container(
                                        margin: EdgeInsets.all(10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                "Get New Upadte Covid-19 Information",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .health_and_safety_outlined,
                                                    size: 12,
                                                    color: Colors.grey,
                                                  ),
                                                  Text(
                                                    " GrapHealth",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              )
                                            ])),
                                  ),
                                )
                              ]),
                            ),
                            //Image(image: AssetImage("assets/Spaghetti.jpg"))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.46,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          //shape: BoxShape.circle(Colors.accents),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0,
                                        2.0), // shadow direction: bottom right
                                  )
                                ],
                              ),
                              //width: 500,
                              //margin: EdgeInsets.all(10),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                      image: AssetImage("assets/GrabBike.jpg"),
                                      fit: BoxFit.fitWidth),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),

                                      color: Colors.white,
                                      //shape: BoxShape.circle(Colors.accents),
                                    ),
                                    child: Container(
                                        margin: EdgeInsets.all(10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                "Order GrabBike From Anywhere You Stay",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .electric_bike_outlined,
                                                    size: 12,
                                                    color: Colors.grey,
                                                  ),
                                                  Text(
                                                    " GrapBike",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              )
                                            ])),
                                  ),
                                )
                              ]),
                            ),
                            //Image(image: AssetImage("assets/Spaghetti.jpg"))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.46,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          //shape: BoxShape.circle(Colors.accents),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0,
                                        2.0), // shadow direction: bottom right
                                  )
                                ],
                              ),
                              //width: 500,
                              //margin: EdgeInsets.all(10),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                      image: AssetImage("assets/GoMart.jpg"),
                                      fit: BoxFit.fitWidth),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),

                                      color: Colors.white,
                                      //shape: BoxShape.circle(Colors.accents),
                                    ),
                                    child: Container(
                                        margin: EdgeInsets.all(10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                "Buy Everything You Want Stay At Home",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .health_and_safety_outlined,
                                                    size: 12,
                                                    color: Colors.grey,
                                                  ),
                                                  Text(
                                                    " GrapMart",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              )
                                            ])),
                                  ),
                                )
                              ]),
                            ),
                            //Image(image: AssetImage("assets/Spaghetti.jpg"))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Image(
                      image: AssetImage("assets/Banner2.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Image(
                      image: AssetImage("assets/Banner3.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              size: 30,
            ),
            title: Text(
              'Home',
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_rounded,
              size: 30,
            ),
            title: Text('Activity'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              size: 30,
            ),
            title: Text('Payment'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 30,
            ),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            title: Text('Account'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.greenAccent[700],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
