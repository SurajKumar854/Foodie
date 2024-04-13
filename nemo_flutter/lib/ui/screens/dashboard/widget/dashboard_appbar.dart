import 'package:flutter/material.dart';
import 'package:nemo_flutter/ui/common/widget/colors/colors.dart';

AppBar DashboardAppBar() {
  return AppBar(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 9,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      child:
                          Icon(Icons.location_on_outlined, color: primaryColor),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Plot 726 , Sriram nagar , Block-C",
                            style: TextStyle(fontSize: 12, color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Center(child: Text("S")),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ));
}
