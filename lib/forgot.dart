import 'package:flutter/material.dart';

class forgot extends StatelessWidget {
  const forgot({super.key});

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
          title: Text("Forgot Password"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 16.0),
                SizedBox(height: 16.0),
                TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //SizedBox(height: 10,)
                   SizedBox(height: 16.0),
                   TextField(
                    decoration: InputDecoration(
                      labelText: 'Create Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                   SizedBox(height: 16.0),
                   TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                   SizedBox(height: 16.0),
                   ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context,"login");
                          },
                          child: Text('Reset'),
                        ),
            ]),
          ),
        ),
      ),
    );
  }
}