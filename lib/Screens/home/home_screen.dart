import 'package:ekuliner/constants.dart';
import 'package:ekuliner/input/input_data_user.dart';
import 'package:ekuliner/utils/auth_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        leading : IconButton(icon : SvgPicture.asset("assets/icons/back.svg",
            color: Colors.white),
          onPressed: () {
            AuthHelper.logout();
          },
        ),
        title : Text('Cari Kuliner',style: TextStyle(color: Colors.white)),
        backgroundColor: kPrimaryColor,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              // By default our  icon color is white
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              // By default our  icon color is white
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.data_usage, color: Colors.white),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => InputDataUser()));
              }),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: Body(),
    );
  }
}

