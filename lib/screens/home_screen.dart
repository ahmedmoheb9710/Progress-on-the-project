import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:studyjam5/models/photo.dart';
import 'package:studyjam5/widgets/menu.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  final myList = [
    'https://picsum.photos/200/300/?blur',
    'https://picsum.photos/200/300?grayscale',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home Screen title")
      ),
      body: Center(
        child:Container(
          width:200,
          child: ListView.builder(itemCount: myList.length,itemBuilder: (BuildContext context, int index) {
            return _buildList(myList[index]);
          },),
        )
      ),
    );
  }
  Widget _buildList(String img){
    return Container(
      child: Image.network(img),
    );
  }

  }
