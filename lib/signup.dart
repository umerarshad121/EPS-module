// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// //
// // class SignupPage extends StatefulWidget {
// //   @override
// //   _SignupPageState createState() => _SignupPageState();
// // }
// //
// // class _SignupPageState extends State<SignupPage> {
// //   bool isLoading = false;
// //   TextEditingController nameController = TextEditingController();
// //   TextEditingController addressController = TextEditingController();
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();
// //   String? selectedGender; // Gender variable
// //   TextEditingController phoneNumberController = TextEditingController();
// //   TextEditingController cnicController = TextEditingController();
// //   bool nameFieldEmpty = false;
// //   bool addressFieldEmpty = false;
// //   bool phoneNumberFieldEmpty = false;
// //   bool phoneNumberInvalid = false;
// //   bool cnicFieldEmpty = false;
// //   bool cnicInvalid = false;
// //   bool emailFieldEmpty = false;
// //   bool passwordFieldEmpty = false;
// //   bool confirmpasswordFieldEmpty = false;
// //   bool passwordWarning = false;
// //
// //   @override
// //   void dispose() {
// //     nameController.dispose();
// //     addressController.dispose();
// //     phoneNumberController.dispose();
// //     cnicController.dispose();
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
// //           title: Text('Signup Page'),
// //         ),
// //         body: Padding(
// //           padding: EdgeInsets.all(16.0),
// //           child: SingleChildScrollView(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 TextField(
// //                   controller: nameController,
// //                   decoration: InputDecoration(
// //                     labelText: 'Name',
// //                     border: OutlineInputBorder(),
// //                     errorText: nameFieldEmpty ? 'Name cannot be empty' : null,
// //                     errorStyle: TextStyle(color: Colors.red), // Add this line
// //                   ),
// //                   onChanged: (value) {
// //                     setState(() {
// //                       nameFieldEmpty = value.isEmpty;
// //                     });
// //                   },
// //                 ),
// //                 SizedBox(height: 16.0),
// //                 TextField(
// //                   controller: addressController,
// //                   decoration: InputDecoration(
// //                     labelText: 'Address',
// //                     border: OutlineInputBorder(),
// //                     errorText:
// //                         addressFieldEmpty ? 'Address cannot be empty' : null,
// //                     errorStyle: TextStyle(color: Colors.red), // Add this line
// //                   ),
// //                   onChanged: (value) {
// //                     setState(() {
// //                       addressFieldEmpty = value.isEmpty;
// //                     });
// //                   },
// //                 ),
// //
// //                 SizedBox(height: 16.0),
// //                 DropdownButtonFormField<String>(
// //                   value: selectedGender,
// //                   decoration: InputDecoration(
// //                     labelText: 'Gender',
// //                     border: OutlineInputBorder(),
// //                     errorText: selectedGender == null
// //                         ? 'Please select a gender'
// //                         : null,
// //                   ),
// //                   items: [
// //                     DropdownMenuItem<String>(
// //                       value: 'Male',
// //                       child: Text('Male'),
// //                     ),
// //                     DropdownMenuItem<String>(
// //                       value: 'Female',
// //                       child: Text('Female'),
// //                     ),
// //                   ],
// //                   onChanged: (value) {
// //                     setState(() {
// //                       selectedGender = value;
// //                     });
// //                   },
// //                 ),
// //                 SizedBox(height: 16.0),
// //                 TextField(
// //                   controller: phoneNumberController,
// //                   keyboardType: TextInputType.phone,
// //                   inputFormatters: [
// //                     FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
// //                     LengthLimitingTextInputFormatter(11),
// //                   ],
// //                   decoration: InputDecoration(
// //                     labelText: 'Phone Number',
// //                     border: OutlineInputBorder(),
// //                     errorText: phoneNumberFieldEmpty
// //                         ? 'Phone number cannot be empty'
// //                         : phoneNumberInvalid
// //                             ? 'Please enter a valid phone number'
// //                             : null,
// //                     errorStyle: TextStyle(color: Colors.red), // Add this line
// //                   ),
// //                   onChanged: (value) {
// //                     setState(() {
// //                       phoneNumberFieldEmpty = value.isEmpty;
// //                       phoneNumberInvalid = value.length != 11;
// //                     });
// //                   },
// //                 ),
// //                 SizedBox(height: 16.0),
// //                 TextField(
// //                   controller: cnicController,
// //                   keyboardType: TextInputType.number,
// //                   inputFormatters: [
// //                     FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
// //                     LengthLimitingTextInputFormatter(13),
// //                   ],
// //                   decoration: InputDecoration(
// //                     labelText: 'CNIC',
// //                     border: OutlineInputBorder(),
// //                     errorText: cnicFieldEmpty
// //                         ? 'CNIC cannot be empty'
// //                         : cnicInvalid
// //                             ? 'Please enter a valid CNIC'
// //                             : null,
// //                     errorStyle: TextStyle(color: Colors.red), // Add this line
// //                   ),
// //                   onChanged: (value) {
// //                     setState(() {
// //                       cnicFieldEmpty = value.isEmpty;
// //                       cnicInvalid = value.length != 13;
// //                     });
// //                   },
// //                 ),
// //                 SizedBox(height: 16.0),
// //                 TextField(
// //                   controller: emailController,
// //                   decoration: InputDecoration(
// //                     labelText: 'Email',
// //                     border: OutlineInputBorder(),
// //                     errorText:
// //                     emailFieldEmpty ? 'Email cannot be empty' : null,
// //                     errorStyle: TextStyle(color: Colors.red), // Add this line
// //                   ),
// //                   onChanged: (value) {
// //                     setState(() {
// //                       emailFieldEmpty = value.isEmpty;
// //                     });
// //                   },
// //                 ),
// //                 SizedBox(height: 16.0),
// //                 TextField(
// //                     obscureText: true,
// //                     inputFormatters: [
// //                       LengthLimitingTextInputFormatter(8),
// //                     ],
// //                     decoration: InputDecoration(
// //                       labelText: 'Password',
// //                       border: OutlineInputBorder(),
// //                       errorText: passwordFieldEmpty
// //                           ? 'Password cannot be empty'
// //                           : (passwordWarning
// //                               ? 'Password should be at least 8 characters'
// //                               : null),
// //                       errorStyle: TextStyle(color: Colors.red), // Add this line
// //                     ),
// //                     onChanged: (value) {
// //                       setState(() {
// //                         passwordFieldEmpty = value.isEmpty;
// //                         passwordFieldEmpty = value.length != 8;
// //                       });
// //                     }),
// //                 SizedBox(height: 16.0),
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     bool hasEmptyFields = nameController.text.isEmpty ||
// //                         addressController.text.isEmpty ||
// //                         selectedGender == null ||
// //                         phoneNumberController.text.isEmpty ||
// //                         cnicController.text.isEmpty;
// //                         emailController.text.isEmpty;
// //                         passwordController.text.isEmpty;
// //
// //                     if (hasEmptyFields) {
// //                       showDialog(
// //                         context: context,
// //                         builder: (BuildContext context) {
// //                           return AlertDialog(
// //                             title: Text('Signup Error'),
// //                             content:
// //                                 Text('Please fill in all the required fields.'),
// //                             actions: [
// //                               TextButton(
// //                                 onPressed: () {
// //                                   Navigator.of(context).pop();
// //                                 },
// //                                 child: Text('OK'),
// //                               ),
// //                             ],
// //                           );
// //                         },
// //                       );
// //                     } else {
// //                       Map<String,dynamic> data= {
// //                         "Name": nameController.text,
// //                         "Address": addressController.text,
// //                         "Gender": selectedGender,
// //                         "Phoneno": phoneNumberController.text,
// //                         "CNIC": cnicController.text,
// //                         "Email": emailController.text,
// //                         "Password": passwordController.text};
// //
// //
// //                           FirebaseFirestore.instance.collection("user").add(data);
// //
// //
// //                       // Perform signup logic here
// //                       // ...
// //                       // Navigate to the login page after successful signup
// //                       Navigator.pushNamed(context, "login");
// //                     }
// //                   },
// //                   child: Text('Sign up'),
// //                 ),
// //                 SizedBox(height: 8.0),
// //                 Row(
// //                   children: [
// //                     Center(
// //                       child: CircleAvatar(
// //                         radius: 20,
// //                         backgroundColor: Colors.grey,
// //                         child: Center(
// //                           child: IconButton(
// //                             icon: Icon(Icons.arrow_back),
// //                             color: Colors.black,
// //                             onPressed: () {
// //                               Navigator.pushNamed(context, "login");
// //                             },
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                     TextButton(
// //                       onPressed: () {
// //                         Navigator.pushNamed(context, "login");
// //                       },
// //                       child: Text(
// //                         'Already have an Account',
// //                         style: TextStyle(
// //                           fontSize: 10,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:alo/global.dart';
// import 'package:alo/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// // import 'package:test_1/extras/login.dart';
// // import 'package:test_1/global.dart';
//
// class signup_page extends StatefulWidget {
//   const signup_page({super.key});
//
//   @override
//   State<signup_page> createState() => _signup_pageState();
// }
//
// class _signup_pageState extends State<signup_page> {
//   TextEditingController nametextEditingController = TextEditingController();
//   TextEditingController phonetextEditingController = TextEditingController();
//   TextEditingController emailtextEditingController = TextEditingController();
//   TextEditingController passwordtextEditingController = TextEditingController();
//   validateForm() {
//     if (nametextEditingController.text.length < 3) {
//       Fluttertoast.showToast(msg: "Name Must be At leat 3 characters");
//     } else if (!emailtextEditingController.text.contains("@")) {
//       Fluttertoast.showToast(msg: "Email must have @ and cannot empty");
//     } else if (phonetextEditingController.text.isEmpty) {
//       Fluttertoast.showToast(msg: "Phone number cannot be empty");
//     } else if (passwordtextEditingController.text.length < 3) {
//       Fluttertoast.showToast(msg: "password Must be At leat of 8 characters");
//     } else {
//       saveUserInfoN();
//     }
//   }
//
//   saveUserInfoN() async {
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext c) {
//           return login_page();
//         });
//
//     // Authentication of username
//     final User? firebaseUser = (await fAuth
//         .createUserWithEmailAndPassword(
//       email: emailtextEditingController.text.trim(),
//       password: passwordtextEditingController.text.trim(),
//     )
//         .catchError((msg) {
//       Navigator.pop(context);
//       Fluttertoast.showToast(msg: "Error: " + msg.toString());
//     })).user;
//
//     if (firebaseUser != null) {
//       Map userMap = {
//         "id": firebaseUser.uid,
//         "name": nametextEditingController.text.trim(),
//         "email": emailtextEditingController.text.trim(),
//         "phone": phonetextEditingController.text.trim(),
//       };
//
//       DatabaseReference userRef = FirebaseDatabase.instance.ref().child("user");
//
//       userRef.child(firebaseUser.uid).set(userMap);
//
//       currentfirebaseUser = firebaseUser;
//       // Navigator.pop(context, MaterialPageRoute(builder: (c) => Loader_info()));
//       Fluttertoast.showToast(msg: "Account Has been created");
//       Navigator.push(context, MaterialPageRoute(builder: (c) => login_page()));
//     } else {
//       Navigator.pop(context);
//       Fluttertoast.showToast(msg: "Account Has not been created");
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
//                 "Register As a Driver",
//                 style: TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: nametextEditingController,
//                   keyboardType: TextInputType.name,
//                   style: TextStyle(color: Colors.grey),
//                   decoration: InputDecoration(
//                     hintText: "Enter Your Name",
//                     labelText: "Name",
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
//                   controller: phonetextEditingController,
//                   keyboardType: TextInputType.phone,
//                   style: TextStyle(color: Colors.grey),
//                   decoration: InputDecoration(
//                     hintText: "Enter Your Phone Number",
//                     labelText: "Phone Number",
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
//                       "Create Account",
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
//                         validateForm(),
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //     builder: (c) => Loader_info(),
//                         //   ),
//                         // ),
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (c) => login_page()));
//                 },
//                 child: Text("If you dont have account Lohin here"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:alo/global.dart';
import 'package:alo/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup_page extends StatefulWidget {
  const signup_page({super.key});

  @override
   State<signup_page> createState() => signup_pageState();
}
class signup_pageState extends State<signup_page> {
  TextEditingController nametextEditingController = TextEditingController();
  TextEditingController phonetextEditingController = TextEditingController();
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();

  validateForm() {
    if (nametextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "Name Must be At leat 3 characters");
    } else if (!emailtextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "Email must have @ and cannot empty");
    } else if (phonetextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Phone number cannot be empty");
    } else if (passwordtextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "password Must be At leat of 8 characters");
    } else {
      signIn();
    }
  }

  Future signIn() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = await FirebaseAuth.instance.currentUser;
    try {
      await auth.createUserWithEmailAndPassword(
          email: emailtextEditingController.text,
          password: passwordtextEditingController.text).then((
          signup_pageState) =>
          FirebaseFirestore.instance.collection("user").doc(
              signup_pageState.user?.uid).set({
            "Name": nametextEditingController.text,
            "phoneno": phonetextEditingController.text,
            "email": emailtextEditingController.text,
            "password": passwordtextEditingController.text,

          }).then((signup_pageState) =>
          {
            print("success"),

          }
          ));
    }
    catch (e) {
      print(e);
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
            padding: const EdgeInsets.only(top: 70.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Register",
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
                      controller: nametextEditingController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Enter Your Name",
                        labelText: "Name",
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
                      controller: phonetextEditingController,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Enter Your Phone Number",
                        labelText: "Phone Number",
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          "Create Account",
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
                          onPressed: () =>
                          {
                            validateForm(),
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => login_page()));
                    },
                    child: Text("If you have an account Login here"),
                  ),
                ],
              ),
            ),
          ),

        ),
      );
    }

}
