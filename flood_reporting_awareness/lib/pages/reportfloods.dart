import 'package:flutter/material.dart';


class Reportfloods extends StatefulWidget {
  const Reportfloods({super.key});

  @override
  State<Reportfloods> createState() => _HomepageState();
}

class _HomepageState extends State<Reportfloods> {
  double? deviceHeight, deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              "FLood Reporting Awareness",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Column(
          children: [
            homeImage(),
            SizedBox(height: deviceHeight! * 0.01),
            bottomButtons(),
          ],
        ),
      ),
    );
  }

  Widget homeImage() {
    return Image.asset(
      'assets/images/road1.jpg',
      width: deviceWidth,
      );
  }

  Widget bottomButtons() {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          bottonButtonLocation(),
          SizedBox(height: deviceHeight! * 0.05),
          bottonButtonDescription(),
          SizedBox(height: deviceHeight! * 0.05),
          bottomButtonsSubmit(),
        ],
      ),
    );
  }

  Widget bottonButtonLocation() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Your location',
        hintText: 'Please state your location...',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.description),
      ),
      maxLines: 1, 
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Location is required';
        }
        return null;
      },
    );

  }

  Widget bottonButtonDescription() {

    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Description of the Flooding Situation',
        hintText: 'Please describe the flooding situation...',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.description),
      ),
      maxLines: 5,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Description is required';
        }
        return null;
      },
    );

  }

  Widget bottomButtonsSubmit() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, 
      ),
      onPressed: () {
        
      },
      child: Text('Submit'),
    );
  }
}
  
