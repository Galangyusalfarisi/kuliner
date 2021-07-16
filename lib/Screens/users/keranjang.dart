import 'package:ekuliner/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KeranjangPage extends StatefulWidget{
  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : IconButton(icon : SvgPicture.asset("assets/icons/back.svg",
            color: Colors.white),
          onPressed: () {},
        ),
        backgroundColor: kPrimaryColor,
        title: Text('KERANJANG',style: TextStyle(color: Colors.white)),),
      body: Center(
        child: Text('Keranjang Page'),),
    );
  }
}