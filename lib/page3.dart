
import 'package:flutter/material.dart';

import 'notfication.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Color.fromARGB(255, 207, 171, 183), Color.fromARGB(255, 168, 190, 201)],
                  radius: 3.0,
                  center: Alignment.topLeft,
                )),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 220, 238, 221),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              },
                                  icon: Icon(Icons.arrow_back_ios))
                            ],

                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('Add New Invoice',style: TextStyle(
                          color:Color.fromARGB(255, 12, 87, 148),fontWeight: FontWeight.bold,fontSize: 20
                      ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: EdgeInsets.all(15),
                        width: 120,height: 120,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 202, 199, 199),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0,0.5),
                                  blurRadius: 1
                              )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,height: 70,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors:[ Color.fromARGB(255, 14, 97, 165),
                                        Color.fromARGB(255, 24, 110, 180)
                                      ]),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Container(
                                  width: 30,height: 30,
                                  child: Image.asset('assets/images/Barcode.png'),
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text('Scan Your Bill',style: TextStyle(
                                  color: Colors.blue
                              ),),
                            )
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.all(15),
                        width: 120,height: 120,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 202, 199, 199),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0,0.5),
                                  blurRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,height: 70,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors:[ Color.fromARGB(255, 14, 97, 165),
                                        Color.fromARGB(255, 24, 110, 180)
                                      ]),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Container(
                                  width: 30,height: 30,
                                  child: Image.asset('assets/images/UploadSimple.png'),
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text('Upload Bill',style: TextStyle(
                                  color: Colors.blue
                              ),),
                            )
                          ],
                        ))],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 220, 238, 221),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Vector.png'),
                      SizedBox(width: 5),
                      TextButton(
                          onPressed: () { Navigator.push(
                            context, MaterialPageRoute(builder: (context) => NotificationPage()),
                          ); },
                          child: Text('My Invoices',
                            style: TextStyle(
                                color: Colors.blue,fontWeight: FontWeight.bold
                            ), )),
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0x99ffffff),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white,
                          image:  DecorationImage (
                            fit:  BoxFit.cover,
                            image:  AssetImage (
                                'assets/images/Ellipse 24.png'
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'MyG Kakkanad',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.375,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Text(
                              'Invoice No: 564446456',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                height: 1.5714285714,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                              child: Text(
                                '1320',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1,
                                  color: Color(0xff4d60dd),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                '29 Dec,2023',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  height: 1.8333333333,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/pending.png',
                                width: 40,
                                height: 40,
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Pending',style: TextStyle(
                                  color: Colors.amber
                              ),)
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0x99ffffff),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white,
                          image:  DecorationImage (
                            fit:  BoxFit.cover,
                            image:  AssetImage (
                                'assets/images/Ellipse 24 (1).png'
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Nice Idappally',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.375,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Text(
                              'Invoice No: 556989896',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                height: 1.5714285714,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                              child: Text(
                                '2300',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1,
                                  color: Color(0xff4d60dd),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                '29 Dec,2023',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  height: 1.8333333333,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/approved.png',
                                width: 40,
                                height: 40,
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Approved',style: TextStyle(
                                  color: Colors.green
                              ),)
                            ],
                          )
                        ],

                      ),

                    ],
                  ),
                ),


              ],

            )

        ));
  }
}