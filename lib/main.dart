import 'package:ecommerce/first.dart';
import 'package:ecommerce/second.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>FirstPage(),
        'second':(context)=>Second(),
      },
    ),
  );
}