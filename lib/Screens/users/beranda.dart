import 'package:ekuliner/Screens/users/depan.dart';
import 'package:ekuliner/Screens/users/kategori.dart';
import 'package:ekuliner/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BerandaPage extends StatefulWidget{
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex(){
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : IconButton(icon : SvgPicture.asset("assets/icons/back.svg",
            color: Colors.white),
          onPressed: () {},
        ),
        title: TextField(
          onTap: (){},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search, color: kTextColor),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide (color: Colors.white)
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true
          ),
        ),
        backgroundColor: kPrimaryColor,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: kPrimaryLightColor,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.all(0),
          tabs: [
            Tab(text :'Restoran'),
            Tab(text :'Menu'),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          DepanPage(),
          KategoriPage(),
        ],
      ),
    );
  }
}