import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';





class getdata extends StatefulWidget {
  const getdata({super.key});

  @override
  State<getdata> createState() => _getdataState();
}

class _getdataState extends State<getdata> {
  String name = "Name loading..";
  String email = "email loading..";

  void getdata() async {
    User? user = await
    FirebaseAuth.instance.currentUser;
    var vari = await FirebaseFirestore.instance.collection("user")
        .doc(user?.uid)
        .get();

    setState(() {
      name = vari.data()?['name'];
      email = vari.data()?['email'];
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

}