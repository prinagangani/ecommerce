import 'package:ecommerce/model.dart';
import 'package:ecommerce/second.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  
  String phnPrice = "\$180.00";
  String phnDetail = "Apple iPhone 13 Pro , 128 GB (Sierra Blue, 6 GB RAM)";
  String phnImgp = "images/assets/1.png";
  Image phnImg = Image.asset("image/assets/1.png");

  String watchPrice = "\$95.00";
  String watchDetail = "Apple Watch Series 8 GPS 41mm Starlight Aluminium Case with Starlight Sport Band";
  String watchImgp = "images/assets/3.png";
  Image watchImg = Image.asset("image/assets/3.png");

  String airPrice = "\$95.00";
  String airDetail = "Apple AirPods Pro (2nd Generation) with MagSafe Charging Case";
  String airImgp = "images/assets/4.png";
  Image airImg = Image.asset("image/assets/4.png");

  String macPrice = "\$200.00";
  String macDetail = "Apple 2020 MacBook Air M1 Chip (8GB RAM/ 256GB SSD/ 13.3-inch (33.74 cm) Display/ 8-core CPU/ 7-core GPU/ mac OS/ Space Grey";
  String macImgp = "images/assets/5.png";
  Image macImg = Image.asset("image/assets/5.png");

  String ipadPrice = "\$120.00";
  String ipadDetail = "Apple iPad Air (10.5-inch, Wi-Fi, 64GB) - Gold (3rd Generation)";
  String ipadImgp = "images/assets/6.png";
  Image ipadImg = Image.asset("image/assets/6.png");

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
                          Image(image: AssetImage("image/assets/1.png")),
                          Text("\$180.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4),
                          Text("IPhone14",style: TextStyle(fontSize: 25),),
                          SizedBox(height: 9),
                          InkWell(onTap: (){

                          },child: InkWell(onTap: (){
                           Model md = Model(iDetail:phnDetail,iPrice:phnPrice,iPath:phnImgp);
                           Navigator.pushNamed(context, 'second',arguments: md);
                          },child: Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),))),
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
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Image(image: AssetImage("image/assets/3.png"),alignment: Alignment.topCenter),
                          Text("\$95.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Text("Apple Watch Series 8",style: TextStyle(fontSize: 17),),
                          SizedBox(height: 23),
                          InkWell(onTap: (){
                            Model md = Model(iDetail:watchDetail,iPrice:watchPrice,iPath:watchImgp);
                            Navigator.pushNamed(context, 'second',arguments: md);
                          },child: Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),)),
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
                          Image(image: AssetImage("image/assets/4.png")),
                          Text("\$80.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 8),
                          Text("Airpods Pro",style: TextStyle(fontSize: 25),),
                          SizedBox(height: 14),
                          InkWell(onTap: (){
                            Model md = Model(iDetail:airDetail,iPrice:airPrice,iPath:airImgp);
                            Navigator.pushNamed(context, 'second',arguments: md);
                          },child: Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),)),
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
                          Image(image: AssetImage("image/assets/5.png")),
                          SizedBox(height: 40),
                          Text("\$200.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 12),
                          Text("Macbook Air M1",style: TextStyle(fontSize: 22),),
                          SizedBox(height: 25),
                          Align(alignment: Alignment.bottomCenter , child: InkWell(onTap: (){
                            Model md = Model(iDetail:macDetail,iPrice:macPrice,iPath:macImgp);
                            Navigator.pushNamed(context, 'second',arguments: md);
                          },child: Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),))),
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
                          Image(image: AssetImage("image/assets/6.png")),
                          SizedBox(height: 3),
                          Text("\$120.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 12),
                          Text("Ipad Air 3",style: TextStyle(fontSize: 25),),
                          SizedBox(height: 15),
                          InkWell(onTap: (){
                            Model md = Model(iDetail:ipadDetail,iPrice:ipadPrice,iPath:ipadImgp);
                            Navigator.pushNamed(context, 'second',arguments: md);
                          },child: Text("See All Details >",style: TextStyle(color: Color(0xff579BB1)),)),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
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

