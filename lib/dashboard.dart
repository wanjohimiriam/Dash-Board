// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:dashboard/list.dart';
import 'package:dashboard/navbar.dart';
import 'package:dashboard/upperColmn.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  double? dev_width, dev_height;
  

  int count= ;
  @override
  Widget build(BuildContext context) {
    dev_height = MediaQuery.of(context).size.height;
    dev_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 247, 245, 245),
      body: Column(
        children: [
          UpperColmn() ,
          midColmn(),
          gridWid(),
          ],
      ),
      bottomNavigationBar: BNavBar(),
    );
  }


  
  Widget midColmn() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: dev_height! * 0.12,
        width: dev_width! * 0.98,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ]),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Change User Profile",
              style: TextStyle(
                  color: Colors.purple[900],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Change Passowrd, Username, Email, PhoneNo",
              style: TextStyle(
                color: Colors.purple[900],
                fontSize: 8,
              ),
            )
          ]),
        ),
      ),
    );
  }
  
  Widget gridWid() {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            stylContnr(),
            stylContnr(),
            stylContnr()
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: stylContnr(),
              ),
              stylContnr(),
              
            ],
          ),
        )
      ],
    );
  }

  Widget stylContnr() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GestureDetector(
        onTap: ,
        child: Container(
          height: dev_height! * 0.162,
          width: dev_width! * 0.29,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                child: Text("1",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900],
                    )),
              ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("Make Payments",
                        style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900],
                  )),
                      ),
                      Center(
                        child: Text("Near any Branch",
                        style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900],
                  )),
                      )
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}
