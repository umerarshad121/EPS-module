// import 'package:alo/client/placeorder.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/get.dart';
//
// class repositer extends GetxController{
//   static repositer get instance => Get.find();
//
//   final _db = FirebaseFirestore.instance;
//   createUser(PlaceOrder user)async{
//     await _db.collection("user").add(user.toJson()).whenComplete(()
//     => Get.snackbar("successful", "submit successfully",
//         snackPosition: SnackPosition.BOTTOM
//     )
//     );
//     .catchError((error, stackTrace){
//       Get.snackbar("Error", "something went wrong",
//     snackPosition: SnackPosition.BOTTOM);
//       print(error.toString());
//
//
//     }
//     );
//   }
// }