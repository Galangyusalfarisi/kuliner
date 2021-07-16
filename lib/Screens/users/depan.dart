import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DepanPage extends StatefulWidget {
  @override
  _DepanPageState createState() => _DepanPageState();
}

class _DepanPageState extends State<DepanPage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Stream<QuerySnapshot<Map<String, dynamic>>> collectionStream =
      FirebaseFirestore.instance.collection('restoran').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: collectionStream,
        builder: (context, snapshot) {
          return Container(
            child: ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data.docs[index].data()['nama']),
                    subtitle: Text(snapshot.data.docs[index].data()['Alamat']),
              );
            }),
          );
        },
      ),
    );
  }
}
