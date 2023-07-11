import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final String address =
        '1 - KM, Defence Rd, near Bhubattian, howk, Lahore, Punjab, Pakistan';
    final String phoneNumber1 = '+92 3154026203';
    final String phoneNumber2 = "+92 3240049330";
    final String email = 'umerarshad11157@gmail.com';
    final String email1 = 'hashirmuhammad73@gmail.com';

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
          title: Text("Contact Us"),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1,
              ),
              Text(
                'Address:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(address),
              SizedBox(height: 20),
              Text(
                'Phone Number:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () => _launchURL('tel:$phoneNumber1''tel:$phoneNumber2'),
                child: Text(
                   phoneNumber1,
                   semanticsLabel: phoneNumber2,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () => _launchURL('mailto:$email''mailto"$email1'),
                child: Text(
                  email,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Social Media:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => _launchURL('https://www.facebook.com/''https://www.facebook.com/umer.arshad.545?mibextid=LQQJ4d'),

                    child: Icon(Icons.facebook, color: Colors.blue),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => _launchURL('https://www.twitter.com/'),
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => _launchURL('https://www.instagram.com/''https://www.instagram.com/umeerr_1/?utm_source=qr'),
                    child: Icon(FontAwesomeIcons.instagram, color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Location:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                height: 300, // Set the desired height
                width: double.infinity, // Set the desired width
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(31.3909, 74.2417), // Updated coordinates
                    zoom: 12.0, // Adjust the zoom level as desired
                  ),
                  // GoogleMap widget parameters
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
