import 'package:ekuliner/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransaksiPage extends StatefulWidget{
  @override
  _TransaksiPageState createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : IconButton(icon : SvgPicture.asset("assets/icons/back.svg",
            color: Colors.white),
          onPressed: () {},
        ),
        backgroundColor: kPrimaryColor,
        title: Text('TRANSAKSI',style: TextStyle(color: Colors.white)),),
      body: Center(
        child: Text('Transaksi Page'),),
    );
  }
}