// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:dashboard/cirlcle.dart';
import 'package:flutter/material.dart';

class UpperColmn extends StatefulWidget {
  const UpperColmn({super.key});

  @override
  State<UpperColmn> createState() => _UpperColmnState();
}

class _UpperColmnState extends State<UpperColmn> {
  double? dev_width, dev_height;
  @override
  Widget build(BuildContext context) {
    dev_height = MediaQuery.of(context).size.height;
    dev_width = MediaQuery.of(context).size.width;
    return upperColmn();
  }

  Widget upperColmn() {
    return Container(
      color: Colors.purple[900],
      height: dev_height! * 0.42,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DashBoard",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      "Good Afternoon",
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20.0,
                ),
              ),
            ],
          ),
          Divider(
            height: dev_height! * 0.00001,
            color: Colors.white12,
            thickness: 0.8,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Wallet Balance",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(
                      width: dev_width! * 0.18,
                    ),
                    Text(
                      "Cauva Arrow",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "K 9,783.42",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(
                      width: dev_width! * 0.18,
                    ),
                    Text(
                      "3",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(
                      width: dev_width! * 0.18,
                    ),
                    Container(
                      height: dev_height! * 0.04,
                      width: dev_width! * 0.2,
                      child: Center(
                        child: Text(
                          "Enter ID",
                          style: TextStyle(color: Colors.purple[900]),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0)),
                    ),
                  ],
                ),
                Divider(
                  height: dev_height! * 0.03,
                  color: Colors.black12,
                  thickness: 0.8,
                  indent: 2,
                  endIndent: 2,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: dev_height! * 0.13,
                  width: dev_width! * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Equity master card",
                                style: TextStyle(
                                  color: Colors.purple[900],
                                  fontSize: 6,
                                )),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.purple[100],
                                ),
                                Text(
                                  "wanjohi@gmail.com",
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 6,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "K 8,978.42",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple[900],
                          ),
                        ),
                        SizedBox(
                          height: dev_height! * 0.025,
                        ),
                        Row(
                          children: [circle(), circle(), circle(), circle()],
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0)),
                ),
              ),
              SizedBox(
                width: dev_width! * 0.05,
              ),
              Container(
                height: dev_height! * 0.1,
                width: dev_width! * 0.2,
                decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(2.0)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
