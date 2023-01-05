import 'dart:html';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE1D7C6),
        appBar: AppBar(
          backgroundColor: Color(0xff579BB1),
          leading: Icon(Icons.apple, size: 30),
          title: Text("App Store"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 175,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffF8F4EA),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                            height: 40,
                            width: 450,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black54, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 20,
                                  color: Colors.black45,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "What are you looking for",
                                  style: TextStyle(
                                      color: Colors.black45, letterSpacing: 2),
                                ),
                                SizedBox(width: 150),
                                Icon(
                                  Icons.photo_camera,
                                  size: 20,
                                  color: Colors.black45,
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.mic,
                                  size: 20,
                                  color: Colors.black45,
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Best Collections",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff579BB1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: Color(0xffECE8DD),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(image: AssetImage("image/1.png")),
                          Text("\$180.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4),
                          Text("IPhone14",style: TextStyle(fontSize: 25),),
                          SizedBox(height: 9),
                          Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Color(0xffECE8DD),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("image/3.png"),alignment: Alignment.topCenter),

                          Text("\$95.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 9),
                          Text("Apple Watch Series 8",style: TextStyle(fontSize: 17),),
                          SizedBox(height: 22),
                          Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Color(0xffECE8DD),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(image: AssetImage("image/1.png")),
                          Text("\$180.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4),
                          Text("IPhone14",style: TextStyle(fontSize: 25),),
                          SizedBox(height: 9),
                          Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
