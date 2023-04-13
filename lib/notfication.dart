import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                      Text('Notifications',style: TextStyle(
                          color:Color.fromARGB(255, 12, 87, 148),fontWeight: FontWeight.bold,fontSize: 20
                      ),)
                    ],
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Stack(
                    children: [
                      Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(18)
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.blue,
                                  backgroundImage: AssetImage('assets/images/Ellipse 24.png'),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MyG Kakkanad has approved your invoice of 128 Points",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            )   )      );
  }
}
