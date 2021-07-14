import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task2/ui/Task2.1.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Completer<GoogleMapController> _controller = Completer();


  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Container(
                    child: Icon(Icons.notifications_active_outlined),
                  ),
                  SizedBox(
                    width: 270,
                  ),
                  profile(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  login(),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    'Islam Abd-Elhady',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              loginState(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: Text(
                  'الاحصائيات',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  chart1(),
                  chart2(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  chart3(),
                  chart4(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: Text(
                  'الاستشارات القادمة',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'لا يوجد استشارات',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 325,
                decoration: BoxDecoration(
//                      image: DecorationImage(
//                      image: AssetImage('images/my.jpg',),
//                      alignment: Alignment.centerRight,),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 3,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),

              child: Row(
                children:[
                  Expanded(flex: 2,
                  child: card(),),
                  SizedBox(width: 15,),
                  Expanded(flex: 1,
                      child: photo())
              ],),
              ),
              SizedBox(height: 100,),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 350,
                child: GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(37.42796133580664, -122.085749655962),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).
          push(MaterialPageRoute(builder: (_) => Task2()));
        },
        child: const Icon(Icons.location_city),
        backgroundColor: Colors.red,
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        items: [
//          BottomNavigationBarItem(icon: Icon(Icons.person)),
//          BottomNavigationBarItem(icon: Icon(Icons.person)),
//          BottomNavigationBarItem(icon: Icon(Icons.person)),
//          BottomNavigationBarItem(icon: Icon(Icons.person)),
//        ],
//      ),
    );
  }

  profile() {
    return Container(
//      alignment: Alignment.topRight,
//      padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/profile.png'),
        ),
      ),
    );
  }

  login() {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: Text(
        'متصل',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    );
  }

  loginState() {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'أنت الان متصل يمكنك استقبال الاستشارات',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  chart1() {
    return Container(
      height: 150,
      width: 125,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 2),
          blurRadius: 3,
        )
      ]),
      child: Column(
        children: [
          Text(
            'استشارات مكتملة',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/chart1.png'),
              ),
            ),
          ),
          Text(
            '0',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  chart2() {
    return Container(
      height: 150,
      width: 125,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 2),
          blurRadius: 3,
        )
      ]),
      child: Column(
        children: [
          Text(
            'اجمالي الاستشارات',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/chart2.png'),
              ),
            ),
          ),
          Text(
            '6',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  chart3() {
    return Container(
      height: 150,
      width: 125,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 2),
          blurRadius: 3,
        )
      ]),
      child: Column(
        children: [
          Text(
            'استشارات جارية',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/chart3.png'),
              ),
            ),
          ),
          Text(
            '0',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  chart4() {
    return Container(
      height: 150,
      width: 125,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 2),
          blurRadius: 3,
        )
      ]),
      child: Column(
        children: [
          Text(
            'استشارات ملغية',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/chart4.png'),
              ),
            ),
          ),
          Text(
            '4',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  card() {
    return Container(
//      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'إسلام عبدالهادي',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),

          ),
          Text(
            'مبرمج فلتر',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Container(

            child: RatingBar.builder(
              itemSize: 20,
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (double value) {},
              ignoreGestures: false,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الفيوم- مدينة الفيوم',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.location_on,
                color: Colors.pink,
              ),
            ],
          ),
        ],
      ),
    );
  }

  photo() {
    return Container(
      alignment: Alignment.centerRight,
      height: 150,
      width: 100,

      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: AssetImage('images/my.jpg'),
          fit: BoxFit.fill,),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
        bottomRight: Radius.circular(20)),
          ),
    );
  }
}
