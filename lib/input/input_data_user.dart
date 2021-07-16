import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ekuliner/Screens/home/home_screen.dart';
import 'package:ekuliner/Screens/users/landing.dart';
import 'package:ekuliner/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputDataUser extends StatefulWidget {
  @override
  _InputDataUserState createState() => _InputDataUserState();
}

class _InputDataUserState extends State<InputDataUser>{
  List<String> LevelPedas =['Tidak sama sekali','1','2','3','4','5'];
  String _levelpedas ='Tidak sama sekali';
  List<String> LevelManis =['Tidak sama sekali','1','2','3','4','5'];
  String _levelmanis ='Tidak sama sekali';
  List<String> LevelGurih =['Tidak sama sekali','1','2','3','4','5'];
  String _levelgurih ='Tidak sama sekali';
  List<String> LevelAsin =['Tidak sama sekali','1','2','3','4','5'];
  String _levelasin ='Tidak sama sekali';
  List<String> LevelAsam =['Tidak sama sekali','1','2','3','4','5'];
  String _levelasam ='Tidak sama sekali';
  List<String> LevelNutrisi =['Tidak sama sekali','1','2','3','4','5'];
  String _levelnutrisi ='Tidak sama sekali';
  List<String> LevelTekstur =['Tidak sama sekali','1','2','3','4','5'];
  String _leveltekstur ='Tidak sama sekali';
  List<String> KesegaranMakanan =['Tidak sama sekali','1','2','3','4','5'];
  String _kesegaranmakanan ='Tidak sama sekali';
  List<String> KebersihanMakanan =['Tidak sama sekali','1','2','3','4','5'];
  String _kebersihanmakanan ='Tidak sama sekali';
  List<String> FavoritMakanan=['Tidak ada','Rendang','Pempek','Kebab','Batagor','Soto Ayam'];
  String _favoritmakanan = 'Tidak ada';

  void pilihlevelpedas(String value9) {
    setState(() {
      _levelpedas=value9;
    });
  }
  void pilihlevelmanis(String value8) {
    setState(() {
      _levelmanis=value8;
    });
  }
  void pilihlevelgurih(String value7) {
    setState(() {
      _levelgurih=value7;
    });
  }
  void pilihlevelasin(String value6) {
    setState(() {
      _levelasin=value6;
    });
  }
  void pilihlevelasam(String value5) {
    setState(() {
      _levelasam=value5;
    });
  }
  void pilihlevelnutrisi(String value4) {
    setState(() {
      _levelnutrisi=value4;
    });
  }
  void pilihleveltekstur(String value3) {
    setState(() {
      _leveltekstur=value3;
    });
  }
  void pilihkesegaranmakanan(String value2) {
    setState(() {
      _kesegaranmakanan=value2;
    });
  }
  void pilihkebersihanmakanan(String value1) {
    setState(() {
      _kebersihanmakanan=value1;
    });
  }
  void pilihmakananfavorit(String value) {
    setState(() {
      _favoritmakanan=value;
    });
  }

  void kirimdata(){
    AlertDialog alertDialog = AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Level Pedas:$_levelpedas'),
            Text('Level Manis:$_levelmanis'),
            Text('Level Gurih:$_levelgurih'),
            Text('Level Asin:$_levelasin'),
            Text('Level Asam:$_levelasam'),
            Text('Level Nutrisi:$_levelnutrisi'),
            Text('Level Tekstur:$_leveltekstur'),
            Text('Kesegaran Makanan:$_kesegaranmakanan'),
            Text('Kebersihan Makanan:$_kebersihanmakanan'),
            Text('Makanan Favorit:$_favoritmakanan'),
            MaterialButton(
                child: Text('OK'),
                color: kPrimaryColor,
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                }
            )
          ],
        ),
      ),
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    return Scaffold(
      appBar : AppBar(
        leading : IconButton(icon : SvgPicture.asset("assets/icons/back.svg",
            color: Colors.white),
          onPressed: () {},
        ),
        title : Text('Preferensi Makanan', style: TextStyle(color: Colors.white),),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20.0),
              Text('Ayo pilih selera kulinermu', style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15.0),
                  textAlign: TextAlign.center),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Level Pedas         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _levelpedas,
                    onChanged: (value9){
                      pilihlevelpedas(value9);
                    },
                    items: LevelPedas.map((String value9){
                      return DropdownMenuItem(
                        value: value9,
                        child: Text(value9),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Level Manis         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _levelmanis,
                    onChanged: (value8){
                      pilihlevelmanis(value8);
                    },
                    items: LevelManis.map((String value8){
                      return DropdownMenuItem(
                        value: value8,
                        child: Text(value8),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Level Gurih         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _levelgurih,
                    onChanged: (value7){
                      pilihlevelgurih(value7);
                    },
                    items: LevelGurih.map((String value7){
                      return DropdownMenuItem(
                        value: value7,
                        child: Text(value7),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Level Asin         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _levelasin,
                    onChanged: (value6){
                      pilihlevelasin(value6);
                    },
                    items: LevelAsin.map((String value6){
                      return DropdownMenuItem(
                        value: value6,
                        child: Text(value6),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Level Asam         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _levelasam,
                    onChanged: (value5){
                      pilihlevelasam(value5);
                    },
                    items: LevelAsam.map((String value5){
                      return DropdownMenuItem(
                        value: value5,
                        child: Text(value5),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Level Nutrisi         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _levelnutrisi,
                    onChanged: (value4){
                      pilihlevelnutrisi(value4);
                    },
                    items: LevelNutrisi.map((String value4){
                      return DropdownMenuItem(
                        value: value4,
                        child: Text(value4),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Level Tekstur         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _leveltekstur,
                    onChanged: (value3){
                      pilihleveltekstur(value3);
                    },
                    items: LevelTekstur.map((String value3){
                      return DropdownMenuItem(
                        value: value3,
                        child: Text(value3),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Kesegaran Makanan         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _kesegaranmakanan,
                    onChanged: (value2){
                      pilihkesegaranmakanan(value2);
                    },
                    items: KesegaranMakanan.map((String value2){
                      return DropdownMenuItem(
                        value: value2,
                        child: Text(value2),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Kebersihan Makanan         :', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _kebersihanmakanan,
                    onChanged: (value1){
                      pilihkebersihanmakanan(value1);
                    },
                    items: KebersihanMakanan.map((String value1){
                      return DropdownMenuItem(
                        value: value1,
                        child: Text(value1),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Makanan Favorit         : ', style: TextStyle(fontSize: 15, color: kPrimaryColor)),
                  DropdownButton(
                    value: _favoritmakanan,
                    onChanged: (String value){
                      pilihmakananfavorit(value);
                    },
                    items: FavoritMakanan.map((String value){
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Tambah', style: TextStyle(
                        color: Colors.white, fontSize: 20.0),)
                  ],
                ),
                color: kPrimaryColor,
                height: 30.0,
                minWidth: 100.0,
                onPressed: () async {
                  kirimdata();
                  users.add({
                    'Level Pedas' : _levelpedas,
                    'Level Manis' : _levelmanis,
                    'Level Gurih' : _levelgurih,
                    'Level Asin' : _levelasin,
                    'Level Asam' : _levelasam,
                    'Level Nutrisi' : _levelnutrisi,
                    'Level Tekstur' : _leveltekstur,
                    'Kesegaran Makanan' : _kesegaranmakanan,
                    'Kebersihan Makanan' : _kebersihanmakanan,
                    'Makanan Favorit': _favoritmakanan,
                  });
                  _levelpedas =' ';
                  _levelmanis =' ';
                  _levelgurih =' ';
                  _levelasin =' ';
                  _levelasam =' ';
                  _levelnutrisi =' ';
                  _leveltekstur =' ';
                  _kesegaranmakanan =' ';
                  _kebersihanmakanan =' ';
                  _favoritmakanan =' ';
                }),
              SizedBox(height: 10.0),
              MaterialButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Lewati', style: TextStyle(
                          color: Colors.white, fontSize: 20.0),)
                    ],
                  ),
                  color: kPrimaryColor,
                  height: 30.0,
                  minWidth: 100.0,
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LandingPage();
                        },
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}