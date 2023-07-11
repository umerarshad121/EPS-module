import 'package:alo/client/drawer/clientdrawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class reviews extends StatefulWidget {
  const reviews({super.key});

  @override
  State<reviews> createState() => reviewsState();
}

class reviewsState extends State<reviews> {
  List<Review> reviews = [
    Review('John Doe', 'Great service!'),
    Review('Jane Smith', 'Highly recommended!'),
    Review('Alex Johnson', 'Excellent quality!'),
  ];

  TextEditingController nameController = TextEditingController();
  TextEditingController reviewController = TextEditingController();

  void addReview() {
    setState(() {
      String name = nameController.text;
      String content = reviewController.text;
      if (name.isNotEmpty && content.isNotEmpty) {
        Review review = Review(name, content);
        reviews.add(review);
        nameController.clear();
        reviewController.clear();
        // Map<String,dynamic> data={
        //
        //   "UserName": nameController.text,
        //   "UserReview": reviewController.text,
        // };
        //FirebaseFirestore.instance.collection("Reviews").add(data);
        // CollectionReference collRef = FirebaseFirestore.instance.collection("Reviews");
        // collRef.add(
        //   // "UserName" : nameController.text,
        //   // "UserReview" : reviewController.text,
        // // );
      };

    });
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
          title: Text("Reviews"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: reviews.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          '${reviews[index].name}: ${reviews[index].content}',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    );
                  },
                ),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(height: 8.0),
              TextField(
                controller: reviewController,
                decoration: InputDecoration(
                  labelText: 'Add a Review',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: addReview,
                child: Text('Submit Review'),

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
        drawer: clientdrawer(),
      ),
    );
  }
}

class Review {
  final String name;
  final String content;

  Review(this.name, this.content);
}
