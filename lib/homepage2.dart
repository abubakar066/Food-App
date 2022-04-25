import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/homepage.dart';

class seeallhomepage extends StatefulWidget {
  @override
  _seeallhomepageState createState() => _seeallhomepageState();
}

class _seeallhomepageState extends State<seeallhomepage> {
  List dataimage = [
    {"image": "assets/images/image5.jpg"},
    {"image": "assets/images/image6.jpg"},
    {"image": "assets/images/image7.jpg"},
    {"image": "assets/images/image8.jpg"},
    {"image": "assets/images/image9.jpg"},
    {"image": "assets/images/image10.jpg"},
  ];
  List datatext = [
    {"text": "Strawberry Fruit Deal"},
    {"text": "SandWitch Mongo Deal"},
    {"text": "Fries Pack Deal"},
    {"text": "Roti Deals"},
    {"text": "Chicken Burger Deal"},
    {"text": "Vegetable Burger Deal"},
  ];
  List datatext2 = [
    {"text": "\$20"},
    {"text": "\$15"},
    {"text": "\$25"},
    {"text": "\$12"},
    {"text": "\$40"},
    {"text": "\$50"},
  ];
  final List<String> image = <String>[
    'assets/images/image8.jpg',
    'assets/images/image10.jpg',
    'assets/images/image5.jpg',
    'assets/images/image7.jpg',
    'assets/images/image9.jpg',
    'assets/images/image6.jpg',
  ];
  final List<String> title = <String>[
    'Roti Deals',
    'Vegetable Burger Deal',
    'Strawberry Fruit Deal',
    'Fries Pack Deal',
    'Chicken Burger Deal',
    'SandWitch Mongo Deal',
  ];
  final List<String> title2 = <String>[
    '\$15',
    '\$25',
    '\$30',
    '\$35',
    '\$40',
    '\$50',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 500.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image10.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3),
                        BlendMode.softLight,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 70.0,
                    left: 300.0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 70.0,
                    left: 20.0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    },
                  ),
                ),
                Container(
                  height: 160.0,
                  width: 500.0,
                  color: Colors.white,
                  margin: EdgeInsets.only(
                    top: 200.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 5.0),
                  ),
                  margin: EdgeInsets.only(
                    top: 160.0,
                    left: 30.0,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image6.jpg"),
                    radius: 40.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 260.0, left: 30.0),
                  child: Text(
                    "Mr.Broo's Grocery",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 300.0,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Products',
                          style: TextStyle(
                            color: Color(0xff00AD8F),
                          ),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey.shade200),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.only(left: 15.0, right: 15.0)),
                            textStyle: MaterialStateProperty.all(
                                TextStyle(fontSize: 20))),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Voucher',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey.shade100),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.only(left: 15.0, right: 15.0)),
                            textStyle: MaterialStateProperty.all(
                                TextStyle(fontSize: 20))),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      ElevatedButton(
                        child: Text(
                          'About',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey.shade100),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.only(left: 15.0, right: 15.0)),
                            textStyle: MaterialStateProperty.all(
                                TextStyle(fontSize: 20))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
              ),
              child: Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200,
              width: 500,
              margin: EdgeInsets.only(
                left: 20.0,
              ),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataimage.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 230,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.5,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 0.0,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(dataimage[index]["image"]),
                          radius: 60.0,
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              datatext[index]["text"],
                              style: TextStyle(
                                color: Color(0xff01000D),
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              datatext2[index]["text"],
                              style: TextStyle(
                                color: Color(0xff01000D),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            ElevatedButton(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                  color: Color(0xff00AD8F),
                                ),
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey.shade200),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.only(left: 15.0, right: 15.0)),
                                  textStyle: MaterialStateProperty.all(
                                      TextStyle(fontSize: 20))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
              ),
              child: Row(
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    "(06)",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15.0,
                left: 20.0,
              ),
              height: 350.0,
              width: 450.0,
              child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.white,
                    elevation: 0.0,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            image[index],
                          ),
                          radius: 60.0,
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              '${title[index]}',
                              style: TextStyle(
                                color: Color(0xff01000D),
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '${title2[index]}',
                              style: TextStyle(
                                color: Color(0xff01000D),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            ElevatedButton(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                  color: Color(0xff00AD8F),
                                ),
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey.shade200),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.only(left: 15.0, right: 15.0)),
                                  textStyle: MaterialStateProperty.all(
                                      TextStyle(fontSize: 20))),
                            ),
                          ],
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
    );
  }
}
