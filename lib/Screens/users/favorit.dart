import 'package:ekuliner/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoritPage extends StatefulWidget{
  @override
  _FavoritPageState createState() => _FavoritPageState();
}

class _FavoritPageState extends State<FavoritPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : IconButton(icon : SvgPicture.asset("assets/icons/back.svg",
            color: Colors.white),
          onPressed: () {},
        ),
        backgroundColor: kPrimaryColor,
        title: Text('FAVORIT',style: TextStyle(color: Colors.white)),),
      body: Center(
        child: Text('Favorit Page'),),
    );
  }
}