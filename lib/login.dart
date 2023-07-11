// // import 'package:flutter/material.dart';
// //
// // void main(List<String> args) {
// //   runApp(Login());
// // }
// //
// // class Login extends StatefulWidget {
// //   Login({Key? key}) : super(key: key);
// //
// //   @override
// //   _LoginState createState() => _LoginState();
// // }
// //
// // class _LoginState extends State<Login> {
// //   bool isLoading = false;
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();
// //   bool emailFieldEmpty = false;
// //   bool passwordFieldEmpty = false;
// //   bool passwordWarning = false;
// //
// //   @override
// //   void dispose() {
// //     emailController.dispose();
// //     passwordController.dispose();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         image: DecorationImage(
// //           image: AssetImage("assets/images/started.png"),
// //           fit: BoxFit.cover,
// //         ),
// //       ),
// //       child: Scaffold(
// //         backgroundColor: Colors.transparent,
// //         appBar: AppBar(
// //           title: Text('Login Page'),
// //         ),
// //         body: Padding(
// //           padding: EdgeInsets.all(16.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               TextField(
// //                 controller: emailController,
// //                 keyboardType: TextInputType.emailAddress,
// //                 decoration: InputDecoration(
// //                   labelText: 'Email',
// //                   border: OutlineInputBorder(),
// //                   errorText: emailFieldEmpty ? 'Email cannot be empty' : null,
// //                 ),
// //                 onChanged: (value) {
// //                   setState(() {
// //                     emailFieldEmpty = value.isEmpty;
// //                   });
// //                   if (!isValidEmail(value)) {
// //                     // Handle invalid email address
// //                     // You can show an error message or disable the submit button, for example
// //                   }
// //                 },
// //               ),
// //               SizedBox(height: 16.0),
// //               TextField(
// //                 controller: passwordController,
// //                 obscureText: true,
// //                 decoration: InputDecoration(
// //                   labelText: 'Password',
// //                   border: OutlineInputBorder(),
// //                   errorText: passwordFieldEmpty
// //                       ? 'Password cannot be empty'
// //                       : (passwordWarning
// //                           ? 'Password should be at least 8 characters'
// //                           : null),
// //                 ),
// //                 onTap: () {
// //                   setState(() {
// //                     passwordWarning = passwordController.text.length < 8;
// //                   });
// //                 },
// //                 onChanged: (value) {
// //                   setState(() {
// //                     passwordFieldEmpty = value.isEmpty;
// //                     passwordWarning = value.length < 8;
// //                   });
// //                 },
// //               ),
// //               SizedBox(height: 16.0),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   String email = emailController.text;
// //                   String password = passwordController.text;
// //
// //                   setState(() {
// //                     emailFieldEmpty = email.isEmpty;
// //                     passwordFieldEmpty = password.isEmpty;
// //                     passwordWarning = password.length < 8;
// //                   });
// //
// //                   if (email.isNotEmpty &&
// //                       password.isNotEmpty &&
// //                       password.length >= 8) {
// //                     if (email == 'hashirmuhammad73@gmail.com') {
// //                       if (password == '12345678') {
// //                         // Read the email and navigate to the admin home page
// //                         readEmail(email);
// //                         Navigator.pushNamed(context, "adminhome");
// //                       } else {
// //                         // Display error message for wrong password
// //                         showDialog(
// //                           context: context,
// //                           builder: (BuildContext context) {
// //                             return AlertDialog(
// //                               title: Text('Login Error'),
// //                               content: Text('Wrong password.'),
// //                               actions: [
// //                                 TextButton(
// //                                   onPressed: () {
// //                                     Navigator.of(context).pop();
// //                                   },
// //                                   child: Text('OK'),
// //                                 ),
// //                               ],
// //                             );
// //                           },
// //                         );
// //                       }
// //                     } else if (email == 'umerarshad11157@gmail.com') {
// //                       if (password == 'Aliumer1') {
// //                         // Read the email and navigate to the admin home page
// //                         readEmail(email);
// //                         Navigator.pushNamed(context, "adminhome");
// //                       } else {
// //                         // Display error message for wrong password
// //                         showDialog(
// //                           context: context,
// //                           builder: (BuildContext context) {
// //                             return AlertDialog(
// //                               title: Text('Login Error'),
// //                               content: Text('Wrong password.'),
// //                               actions: [
// //                                 TextButton(
// //                                   onPressed: () {
// //                                     Navigator.of(context).pop();
// //                                   },
// //                                   child: Text('OK'),
// //                                 ),
// //                               ],
// //                             );
// //                           },
// //                         );
// //                       }
// //                     } else {
// //                       // Read the email and navigate to the home page
// //                       readEmail(email);
// //                       Navigator.pushNamed(context, "home");
// //                     }
// //                   } else {
// //                     // Handle empty fields or password length constraint
// //                     // You can show an error message or disable the submit button, for example
// //                   }
// //                 },
// //                 child: Text('Login'),
// //               ),
// //               TextButton(
// //                 onPressed: () {
// //                   Navigator.pushNamed(context, "forgot");
// //                 },
// //                 child: Text(
// //                   'Forgot Password',
// //                   style: TextStyle(
// //                     fontSize: 10,
// //                     color: Color.fromARGB(255, 0, 158, 231),
// //                   ),
// //                 ),
// //               ),
// //               TextButton(
// //                 onPressed: () {
// //                   Navigator.pushNamed(context, "signup");
// //                 },
// //                 child: Text(
// //                   'Dont have an account ; create it',
// //                   style: TextStyle(
// //                     fontSize: 11,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // Function to validate the email address
// //   bool isValidEmail(String email) {
// //     final pattern = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
// //     final regExp = RegExp(pattern);
// //     return regExp.hasMatch(email);
// //   }
// //
// //   // Function to read the email
// //   void readEmail(String email) {
// //     print('Email: $email');
// //     // You can implement your own logic here to read the email
// //   }
// // }
// //new
// import 'package:alo/client/home.dart';
// import 'package:alo/global.dart';
// import 'package:alo/signup.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
//
// class login_page extends StatefulWidget {
//   const login_page({super.key});
//
//   @override
//   State<login_page> createState() => _login_pageState();
// }
//
// class _login_pageState extends State<login_page> {
//   TextEditingController emailtextEditingController = TextEditingController();
//   TextEditingController passwordtextEditingController = TextEditingController();
//
//   validateForm() {
//     if (!emailtextEditingController.text.contains("@")) {
//       Fluttertoast.showToast(msg: "Email is not valid");
//     } else if (passwordtextEditingController.text.isEmpty) {
//       Fluttertoast.showToast(msg: "correct password is required");
//     } else {
//       // showDialog(
//       //     context: context,
//       //     barrierDismissible: false,
//       //     builder: (BuildContext c) {
//       //       return progress_dialog(
//       //         message: "Progressing, Please Wait",
//       //       );
//       //     }
//
//       //     );
//       // saveDriverInfoN();
//       loginUserNow();
//     }
//   }
//
//   loginUserNow() async {
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext c) {
//           return home();
//         });
//
//     // Authentication of username
//     final User? firebaseUser = (await fAuth
//         .signInWithEmailAndPassword(
//       email: emailtextEditingController.text.trim(),
//       password: passwordtextEditingController.text.trim(),
//     )
//         .catchError((msg) {
//       Navigator.pop(context);
//       Fluttertoast.showToast(msg: "Error: " + msg.toString());
//     }))
//         .user;
//
//     if (firebaseUser != null) {
//       // Map driverMap = {
//       //   "id": firebaseUser.uid,
//       //   "name": nametextEditingController.text.trim(),
//       //   "email": emailtextEditingController.text.trim(),
//       //   "phone": phonetextEditingController.text.trim(),
//       // };
//
//       // DatabaseReference driversRef =
//       //     FirebaseDatabase.instance.ref().child("drivers");
//       // driversRef.child(firebaseUser.uid).set(driverMap);
//
//       currentfirebaseUser = firebaseUser;
//       // Navigator.pop(context, MaterialPageRoute(builder: (c) => Loader_info()));
//       Fluttertoast.showToast(msg: "Login Succefu");
//
//       Navigator.push(context, MaterialPageRoute(builder: (c) => home()));
//     } else {
//       Navigator.pop(context);
//       Fluttertoast.showToast(msg: "Error occured");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 10,
//               ),
//               Image.asset("assets/images/started.png"),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "Login As Driver",
//                 style: TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: emailtextEditingController,
//                   keyboardType: TextInputType.emailAddress,
//                   style: TextStyle(color: Colors.grey),
//                   decoration: InputDecoration(
//                     hintText: "Enter Your Email",
//                     labelText: "Email",
//                     hintStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 10,
//                     ),
//                     labelStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 10,
//                     ),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: passwordtextEditingController,
//                   keyboardType: TextInputType.text,
//                   obscureText: true,
//                   style: TextStyle(color: Colors.grey),
//                   decoration: InputDecoration(
//                     hintText: "Enter Password",
//                     labelText: "Password",
//                     hintStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 10,
//                     ),
//                     labelStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 10,
//                     ),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     child: Text(
//                       "Login Account",
//                       style: TextStyle(
//                         color: Colors.greenAccent,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                   CircleAvatar(
//                     backgroundColor: Colors.greenAccent,
//                     radius: 20,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.black,
//                       ),
//                       onPressed: () => {
//
//                         validateForm(),
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //     builder: (c) => MainScreen(),
//                         //   ),
//                         // )
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10,),
//               ElevatedButton(
//                 onPressed:() {
//                   Navigator.push(context, MaterialPageRoute(builder: (c) => signup_page()));
//                 }, child: Text("If you dont have account Sign up here"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:alo/client/home.dart';
import 'package:alo/global.dart';
import 'package:alo/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();

  validateForm() {
    if (!emailtextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "Email is not valid");
    } else if (passwordtextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Correct password is required");
    } else {
      loginUserNow();
    }
  }

  loginUserNow() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext c) {
        return const home();
      },
    );

    final String email = emailtextEditingController.text.trim();
    final String password = passwordtextEditingController.text.trim();

    if (email == "umerarshad11157@gmail.com" && password == "Aliumer1") {
      // Navigate to admin home page
      Navigator.pushNamed(context, "adminhome");
    } else if (email == "hashirmuhammad7149@gmail.com" &&
        password == "123456789") {
      // Navigate to user home page
      Navigator.pushNamed(context, "adminhome");
    } else {
      try {
        final User? firebaseUser = (await fAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        ))
            .user;

        if (firebaseUser != null) {
          currentfirebaseUser = firebaseUser;
          Fluttertoast.showToast(msg: "Login Successful");
          Navigator.push(context, MaterialPageRoute(builder: (c) => home()));
        } else {
          Navigator.pop(context);
          Fluttertoast.showToast(msg: "Error occurred");
        }
      } catch (error) {
        Navigator.pop(context);
        Fluttertoast.showToast(msg: "Error: " + error.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/started.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailtextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Enter Your Email",
                        labelText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passwordtextEditingController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Enter Password",
                        labelText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          "Login Account",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        radius: 20,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            validateForm();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => signup_page()));
                    },
                    child: Text("If you don't have an account, Sign up here"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}