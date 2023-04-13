import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Color.fromARGB(255, 212, 160, 177), Color.fromARGB(255, 195, 230, 247)],
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
                                Icon(Icons.arrow_back_ios,
                                    color: Color.fromARGB(277, 6, 4, 160)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(15),
                        child: Text('Enter the invoice number',
                            style: TextStyle(color: Color.fromARGB(255, 12, 87, 148),fontWeight: FontWeight.bold)),
                      ) ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 222, 230, 223),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Eg:6846546546'
                                  ))))),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 314,
                      height: 314,
                      padding: EdgeInsets.all(16),
                      child: Image.asset('assets/image 4(1).png'),
                    ),
                  ),
                  SizedBox(height: 80,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('< Back',
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(150, 50),
                        ),),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Next >',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          minimumSize: Size(150, 50),
                        ),
                      ),],


                  )]

            )));
  }}
