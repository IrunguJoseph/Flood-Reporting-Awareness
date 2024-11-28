import 'package:flutter/material.dart';
import 'package:flood_reporting_awareness/pages/reportfloods.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
          bottomButtonsText(),
          SizedBox(height: deviceHeight! * 0.05),
          bottomButtonsReportFloods(),
          SizedBox(height: deviceHeight! * 0.05),
          //bottomButtonsVideoChat(),
        ],
      ),
    );
  }

   Widget bottomButtonsText() {
  return Center(
    child: Text(
      "Create awareness by informing others about flood situation in your area.",
      style: TextStyle(
        color: Colors.black,
        fontSize: deviceWidth! * 0.1,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center, 
    ),
  );
}

 Widget bottomButtonsReportFloods() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, // foreground
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Reportfloods()),
        );
      },
      child: Text('Report Floods'),
    );
  }
  
}