import 'package:flutter/material.dart';

class my_drawer extends StatelessWidget {
  const my_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/started.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "adminhome");
                    },
                    icon: Icon(Icons.home),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "adminhome");
                    },
                    child: Text("Home",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "trackorderinfo");
                    },
                    icon: Icon(Icons.sentiment_satisfied_sharp),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "trackorderinfo");
                    },
                    child: Text("Track Order Info",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "contactus");
                    },
                    icon: Icon(Icons.call),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "contactus");
                    },
                    child: Text("Contact Us",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "aboutus");
                    },
                    icon: Icon(Icons.info),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "aboutus");
                    },
                    child: Text("About Us",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    icon: Icon(Icons.logout),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    child: Text("Logout",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),

            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: ElevatedButton(onPressed: (){},
            //      child: Text("Profile"),),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
