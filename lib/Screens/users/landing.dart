import 'package:ekuliner/Screens/users/akun.dart';
import 'package:ekuliner/Screens/users/beranda.dart';
import 'package:ekuliner/Screens/users/favorit.dart';
import 'package:ekuliner/Screens/users/keranjang.dart';
import 'package:ekuliner/Screens/users/transaksi.dart';
import 'package:ekuliner/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget{
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>{
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
    new FavoritPage(),
    new KeranjangPage(),
    new TransaksiPage(),
    new AkunPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryLightColor,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: kPrimaryLightColor,
            ),
            icon: new Icon(
              Icons.home,
              color: kTextColor,
            ),
            label: 'Beranda'
          ),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.favorite,
                color: kPrimaryLightColor,
              ),
              icon: new Icon(
                Icons.favorite,
                color: kTextColor,
              ),
              label: 'Favorit'
          ),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.shopping_cart,
                color: kPrimaryLightColor,
              ),
              icon: new Icon(
                Icons.shopping_cart,
                color: kTextColor,
              ),
              label: 'Keranjang'
          ),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.swap_horiz_sharp,
                color: kPrimaryLightColor,
              ),
              icon: new Icon(
                Icons.swap_horiz_sharp,
                color: kTextColor,
              ),
              label: 'Transaksi'
          ),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.person,
                color: kPrimaryLightColor,
              ),
              icon: new Icon(
                Icons.person_outline,
                color: kTextColor,
              ),
              label: 'Profil'
          ),
        ],
      ),
    );
  }
}