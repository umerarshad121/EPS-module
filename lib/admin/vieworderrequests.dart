import 'package:alo/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class vieworderrequests extends StatelessWidget {
  const vieworderrequests({super.key});

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
          title: Text("View Order Requests"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Product Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Duration in Months',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Description of product',
                      border: OutlineInputBorder(),
                    ),
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
                      decoration: InputDecoration(labelText: 'Length'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'length';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Width'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'width';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Height'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'height';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Number of Pieces'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'number of pieces';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Price',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.red,
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              size: 16,
                            ),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pushNamed(context, "adminhome");
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.green,
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.check,
                              size: 16,
                            ),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pushNamed(context, "adminhome");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(25.0),
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, "home");
                  //     },
                  //     child: Text("Back"),
                  //   ),
                  // ),
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
                                Navigator.pushNamed(context, "adminhome");
                              },
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "adminhome");
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
        drawer: my_drawer(),
      ),
    );
  }
}
