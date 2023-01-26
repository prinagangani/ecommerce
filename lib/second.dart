import 'package:flutter/material.dart';

import 'model.dart';


class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  //

  //
  //quantity inc/dec
  int i=1;
  ///
  /// like option effect
  int e = 0;

  @override
  Widget build(BuildContext context) {
    Model md = ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff579BB1),
          leading: InkWell(onTap: (){
            Navigator.pop(context);
          },child: Icon(Icons.arrow_back, size: 26)),
          title: Text("App Store"),
          centerTitle: true,
        ),
        backgroundColor: Color(0xffF8F4EA),
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: 600,
                width: 450,
                child: Image.asset("${md.iPath}"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                width: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(27),
                        topLeft: Radius.circular(27))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.favorite,size: 20),
                            backgroundColor: Color(0xff579BB1)),
                      ),
                    ),
                    SizedBox(
                      height: 10,),
                    Padding(padding: EdgeInsets.only(left: 20,right: 20),child: Text("${md.iDetail}",style: TextStyle(fontSize: 20),)),
                    SizedBox(
                      height: 10,),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff579BB1),
                              ),
                              child: Text("${md.iPrice}",
                                  style: TextStyle(color: Colors.black, fontSize: 22)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),color:Color(0xff579BB1)),
                              child: Text("Add to cart",
                                  style: TextStyle(fontSize: 18, color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}