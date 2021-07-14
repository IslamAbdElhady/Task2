import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('images/profile.png')),
            border: Border.all(width: 2, color: Colors.black),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            box1(),
            box2(),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 320,
              color: Colors.white,
              child: Text('تسجيل الدخول',style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ),
          ],
        ),
      ),
    );
  }

  box1() {
    return Container(
        alignment: Alignment.center,
        height: 270,
        width: 320,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/chart1.png')),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 270,
              color: Colors.grey.shade300,
              child: Text(
                'مستثمر',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
  box2() {
    return Container(
        alignment: Alignment.center,
        height: 270,
        width: 320,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/chart2.png')),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 270,
              color: Colors.grey.shade300,
              child: Text(
                'صاحب مشروع او فكرة',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
