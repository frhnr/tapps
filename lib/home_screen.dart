import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_project/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    'assets/flag.png',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'TRAVEL APP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 40.0,
                        fontFamily: 'Cardo'),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('HAHAHA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
              ),
              SizedBox(
                height: 18.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('lorem ipsum dolor sit amet',
                    style: TextStyle(color: Colors.grey[20], fontSize: 14.0)),
              ),
              SizedBox(
                height: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('lorem ipsum dolor sit amet lorem lorem lorem',
                    style: TextStyle(color: Colors.grey[20], fontSize: 14.0)),
              ),
              SizedBox(
                height: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                    'lorem ipsum dolor sit amet lorem lorem lorem lorem ',
                    style: TextStyle(color: Colors.grey[20], fontSize: 14.0)),
              ),
              SizedBox(
                height: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 350.0,
                      height: 280.0,
                    ),
                    Container(
                        width: 300.0,
                        height: 280.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/paklogo.png')))),
                    Positioned(
                      top: 120.0,
                      left: 230.0,
                      child: Material(
                        elevation: 8.0,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12)),
                        child: Container(
                          width: 100.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              Text('Like',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 16.0),
                child: Row(
                  children: <Widget>[
                    Text('Beautiful Spot',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cardo',
                        )),
                    SizedBox(width: MediaQuery.of(context).size.width - 270.0),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18.0),
                child: SizedBox(
                  height: 250.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      cardItemWidget(context, 'assets/pic7.jpg', 'Faisa Masjid',
                          '30 Booking'),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, 'assets/pic1.jpg', 'Faisa Masjid',
                          '30 Booking'),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, 'assets/pic3.jpg', 'Faisa Masjid',
                          '30 Booking'),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, 'assets/pic4.jpg', 'Faisa Masjid',
                          '30 Booking'),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, 'assets/pic2.jpg', 'Faisa Masjid',
                          '30 Booking'),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget cardItemWidget(
      BuildContext context, String image, String title, String bokQty) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => DetailScreen(
                      key: key,
                    )));
      }),
      child: Container(
        width: 250.0,
        height: 250.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    width: 250.0,
                    height: 115.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(image)))),
                Positioned(
                  left: 200,
                  top: 8.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('2.0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0)),
                      Text('KM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18.0)),
                      SizedBox(height: 25.0),
                      Material(
                        color: Colors.white,
                        shadowColor: Colors.grey,
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child:
                                Icon(Icons.favorite, color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12.0),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
            circleWidgets(bokQty),
          ],
        ),
      ),
    );
  }

  Widget circleWidgets(String bokQty) {
    return Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 12.0),
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(
                          image: AssetImage('assets/pro2.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20.0,
                  top: 1.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 16.0,
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        border: Border.all(color: Colors.white),
                        image: DecorationImage(
                            image: AssetImage('assets/pro1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 90.0,
            ),
            Text(
              bokQty,
              style: TextStyle(color: Colors.grey[20], fontSize: 18.0),
            )
          ],
        ));
  }
}
