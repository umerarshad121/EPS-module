import 'package:alo/client/drawer/clientdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class pendingorder extends StatelessWidget {
  const pendingorder({super.key});

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
          title: Text("Pending Order"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Product Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Duration in Months',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    enabled: false,
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
                      enabled: false,
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
                      enabled: false,
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
                      enabled: false,
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
                      enabled: false,
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
                  Text(
                    "Note: Ship the sample to the manufacturer address",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Price',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Tracking Order Status',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
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
        drawer: clientdrawer(),
      ),
    );
  }
}
