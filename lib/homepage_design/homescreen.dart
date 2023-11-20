import 'package:flutter/material.dart';
import 'package:kickticket/homepage_design/homapage_model.dart';
import 'package:kickticket/homepage_design/homepage_all.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatelessWidget {


  final List<ModelProduct> products = [
    ModelProduct("Title 1", "Date 1", "assets/splash.png", FontAwesomeIcons.mapMarkerAlt),
    ModelProduct("Title 1", "Date 1", "assets/splash.png", FontAwesomeIcons.mapMarkerAlt),
    ModelProduct("Title 1", "Date 1", "assets/splash.png", FontAwesomeIcons.mapMarkerAlt),
    ModelProduct("Title 1", "Date 1", "assets/splash.png", FontAwesomeIcons.mapMarkerAlt),
    ModelProduct("Title 1", "Date 1", "assets/splash.png", FontAwesomeIcons.mapMarkerAlt),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 500,
            height: 350,
            decoration: BoxDecoration(
              color: Color(0xFF9D76C1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 420,
                      height: 170,
                      child: Image(
                        image: AssetImage('assets/gelombang.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.near_me,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Matches near me',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Hello, Ayika.',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 390,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.withOpacity(0.6),
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 50,
                  right: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      SizedBox(height: 10),
      ProductWidget(products: products),

      ]
      ),
    );
  }
}
