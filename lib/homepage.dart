import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/homepage2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  double height;
  double width;
  int activeIndex = 0;
  final Images = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.png',
  ];
  List dataimage = [
    {"image": "assets/images/image5.jpg"},
    {"image": "assets/images/image6.jpg"},
    {"image": "assets/images/image7.jpg"},
    {"image": "assets/images/image8.jpg"},
    {"image": "assets/images/image9.jpg"},
    {"image": "assets/images/image10.jpg"},
  ];
  List datatext = [
    {"text": "Strawberry"},
    {"text": "SandWitch"},
    {"text": "Fries"},
    {"text": "Roti"},
    {"text": "Chicken Burger"},
    {"text": "Vegetable Burger"},
  ];
  List collectionimage = [
    {"image": "assets/images/image9.jpg"},
    {"image": "assets/images/image10.jpg"},
    {"image": "assets/images/image5.jpg"},
    {"image": "assets/images/image8.jpg"},
    {"image": "assets/images/image6.jpg"},
    {"image": "assets/images/image7.jpg"},
  ];
  List collectiontext = [
    {"text": "Burger Mongo Deal"},
    {"text": "Chicken Hot Deal"},
    {"text": "Fruits Deal"},
    {"text": "Roti with Deal"},
    {"text": "SandWitch Deal"},
    {"text": "Fries Deal"},
  ];
  List categoryimage = [
    {"image": "assets/images/image5.jpg"},
    {"image": "assets/images/image6.jpg"},
    {"image": "assets/images/image7.jpg"},
    {"image": "assets/images/image8.jpg"},
    {"image": "assets/images/image9.jpg"},
    {"image": "assets/images/image10.jpg"},
    {"image": "assets/images/image5.jpg"},
    {"image": "assets/images/dot.png"},
  ];
  List categorytext = [
    {"text": "Strawberry"},
    {"text": "SandWitch"},
    {"text": "Fries"},
    {"text": "Roti"},
    {"text": "Chicken Burger"},
    {"text": "Vegetable Burger"},
    {"text": "Strawberry"},
    {"text": "More"},
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.4,
                    width: width * 1.0,
                    color: Color(0xff0F6657),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.055, left: width * 0.05),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "FOOD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "DOOR",
                              style: TextStyle(
                                color: Color(0xffFBA808),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.55,
                            ),
                            Icon(
                              Icons.circle,
                              size: 8.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Icon(
                              Icons.circle,
                              size: 8.0,
                              color: Color(0xffFBA808),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: width * 0.894,
                          ),
                          Icon(
                            Icons.circle,
                            size: 8.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Icon(
                            Icons.circle,
                            size: 8.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Icon(
                            Icons.location_on,
                            size: 10.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            "204 foran st.downson, MI 4M23",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white24,
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Type something...',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.22),
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200.0,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                      itemCount: Images.length,
                      itemBuilder: (context, index, realIndex) {
                        return buildImage(Images, index);
                      },
                    ),
                  ),
                  buildIndicator(),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.065,
                ),
                child: Row(
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        color: Color(0xff01000D),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.6,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => seeallhomepage()),
                        );
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xff00AD8F),
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200,
                width: 500,
                margin: EdgeInsets.only(
                  left: width * 0.05,
                ),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataimage.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 230,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      elevation: 0.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(dataimage[index]["image"]),
                            radius: 50.0,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            datatext[index]["text"],
                            style: TextStyle(
                              color: Color(0xff01000D),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.09,
                ),
                child: Row(
                  children: [
                    Text(
                      "Voucher",
                      style: TextStyle(
                        color: Color(0xff01000D),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.54,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff00AD8F),
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image(
                image: AssetImage("assets/images/image3.jpg"),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.07,
                ),
                child: Row(
                  children: [
                    Text(
                      "Collection",
                      style: TextStyle(
                        color: Color(0xff01000D),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.54,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff00AD8F),
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200,
                width: 500,
                margin: EdgeInsets.only(
                  left: width * 0.05,
                ),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataimage.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 230,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      elevation: 0.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              collectionimage[index]["image"],
                            ),
                            height: height * 0.15,
                            width: width * 0.45,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            collectiontext[index]["text"],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.07,
                ),
                child: Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        color: Color(0xff01000D),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.54,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff00AD8F),
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200,
                width: 500,
                margin: EdgeInsets.only(
                  left: width * 0.05,
                  right: width * 0.05,
                ),
                child: GridView.builder(
                  itemCount: categoryimage.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      elevation: 0.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              categoryimage[index]["image"],
                            ),
                            height: height * 0.05,
                            width: width * 0.13,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            categorytext[index]["text"],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 6.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              size: 30.0,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hail,
              size: 30.0,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 30.0,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30.0,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return Container(
      margin: EdgeInsets.only(top: height * 0.47, left: width * 0.4),
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: Images.length,
        effect: JumpingDotEffect(
          dotHeight: 10.0,
          dotWidth: 10.0,
        ),
      ),
    );
  }
}

Widget buildImage(List img, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: Image.asset(img[index]));
