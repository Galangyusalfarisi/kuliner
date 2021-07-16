import 'package:ekuliner/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 10,
            top : 30,
            child: Icon(
              Icons.arrow_back, color: kPrimaryColor,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
