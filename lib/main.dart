import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                      size: 35.0,
                    ),
                    Column(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromRGBO(253, 100, 95, 1),
                              size: 33.0,
                            ),
                            Text(
                              "Los Angeles, ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "CA",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image(
                      image: NetworkImage(
                          'https://sittight.com/wp-content/uploads/2017/08/testimonial-man.png'),
                      height: 60.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextField(
                      autofocus: false,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromRGBO(253, 100, 95, 1),
                      ),
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.search_rounded,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Doctor...',
                        contentPadding: const EdgeInsets.only(
                            left: 2.0, bottom: 12.0, top: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                    ),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Color.fromRGBO(253, 100, 95, 0.6),
                    ),
                  ),
                  // margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  padding: new EdgeInsets.fromLTRB(5, 5, 5, 5),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 260.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 100, 95, 0.2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Specialist!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "You can easily and quickly find the doctor you need",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    height: 60.0,
                                    width: 1200.0,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(253, 100, 95, 1),
                                      borderRadius: BorderRadius.circular(60.0),
                                    ),
                                  ),
                                  Positioned(
                                    top: 15.0,
                                    left: 35,
                                    child: Text(
                                      "Catalog",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage("assets/images/ill2.png"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    Icon(
                      Icons.more_horiz,
                      size: 35.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      new BoxShadow(
                        color: Color.fromRGBO(253, 100, 95, 0.2),
                        blurRadius: 10.0,
                      ),],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(253, 100, 95, 0.1),
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                            Image(
                              image: AssetImage('assets/images/tile1.png'),
                              height: 150,
                              width: 150,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elizabeth Taylor',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Cardiologist',
                              style: TextStyle(
                                  fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Appointment',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      new BoxShadow(
                        color: Color.fromRGBO(253, 100, 95, 0.2),
                        blurRadius: 10.0,
                      ),],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(253, 100, 95, 0.1),
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                            Image(
                              image: AssetImage('assets/images/tile2.png'),
                              height: 150,
                              width: 150,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elizabeth Taylor',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Cardiologist',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Appointment',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      new BoxShadow(
                        color: Color.fromRGBO(253, 100, 95, 0.2),
                        blurRadius: 10.0,
                      ),],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(253, 100, 95, 0.1),
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                            Image(
                              image: AssetImage('assets/images/tile3.png'),
                              height: 150,
                              width: 150,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elizabeth Taylor',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Cardiologist',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Appointment',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
