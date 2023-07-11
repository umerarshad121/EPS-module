import 'dart:collection';

import 'package:alo/client/drawer/clientdrawer.dart';
import 'package:alo/client/home.dart';
import 'package:alo/client/placeorder.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  PlaceOrderState createState() => PlaceOrderState();
}

class PlaceOrderState extends State<PlaceOrder> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController productNameController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController numberOfPiecesController =
      TextEditingController();

  @override
  Future<void> dispose() async {
    productNameController.dispose();
    durationController.dispose();
    descriptionController.dispose();
    lengthController.dispose();
    widthController.dispose();
    heightController.dispose();
    numberOfPiecesController.dispose();
    super.dispose();

    //
    // PlaceOrder placeOrder = PlaceOrder();
    // CollectionReference placeOrderCollection = FirebaseFirestore.instance.collection("placeorder");
    // DocumentReference docRef = await placeOrderCollection.add(placeOrder);
    // String documentId = docRef.id;
    // placeOrder.uid = documentId;
    // await docRef.set(placeOrder.toJson());

    // Future placeorder() async {
    //   // FirebaseAuth auth = FirebaseAuth.instance;
    //   // User? user = await FirebaseAuth.instance.currentUser;
    //   try {
    //     // await auth.createUserWithEmailAndPassword(
    //     //     : emailtextEditingController.text,
    //     //     password: passwordtextEditingController.text).then((
    //     //     signup_pageState) =>
    //        // var placeorder;


    // //Map<String,String> v=new HashMap()
    //
    //          "Product Name": productNameController.text,
    //           "Duration": durationController.text,
    //           "Description": descriptionController.text,
    //           "Length": lengthController.text,
    //           "Width": widthController.text,
    //           "Height": heightController.text,
    //           "No of Pieces": numberOfPiecesController.text,




















  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/started.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Place Order"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      controller: productNameController,
                      decoration: InputDecoration(
                        labelText: 'Product Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a product name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: durationController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                        labelText: 'Duration in Months',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a duration';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        labelText: 'Give Description of product',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a description';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "DIMENSION",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: lengthController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: InputDecoration(labelText: 'Length'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the length';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: widthController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: InputDecoration(labelText: 'Width'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the width';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: heightController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: InputDecoration(labelText: 'Height'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the height';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: numberOfPiecesController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration:
                            InputDecoration(labelText: 'Number of Pieces'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the number of pieces';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Note: Ship the sample to the manufacturer address",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _submitForm();
                        },
                        child: Text("Place Order"),
                      ),
                    ),
                    Row(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey,
                            child: Center(
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 16,
                                ),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.pushNamed(context, "home");
                                },
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "home");
                          },
                          child: Text(
                            'Back to Home',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        drawer: clientdrawer(),
      ),
    );
  }

  void _submitForm() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      bool hasEmptyFields = productNameController.text.isEmpty ||
          durationController.text.isEmpty ||
          descriptionController.text.isEmpty ||
          lengthController.text.isEmpty ||
          widthController.text.isEmpty ||
          heightController.text.isEmpty ||
          numberOfPiecesController.text.isEmpty;

      if (!hasEmptyFields) {
        Navigator.pushNamed(context, "home");
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Form Incomplete'),
              content: Text('Please fill in all the required fields.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
            // toJson(){
            //   return {
            //   "productname": productNameController,
            //     "durattion": durationController,
            //     "description": descriptionController,
            //     "lenght": lengthController,
            //     "width": widthController,
            //     "height": heightController,
            //     "numberofpiece": numberOfPiecesController
            //
            //   }
            },

        );
      }
      }
    }
  }
