import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie_admin/ui/navigation/routes/routes.dart';

import '../../common/colors/colors.dart';
import '../../common/widget/app_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  get titleBar => "Dashboard";

  get bodyPadding => 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: FoodieAppbar(title: titleBar),
        body: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Flexible(
              child: Container(
                padding: EdgeInsets.all(bodyPadding),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                            color:(yellowTangy as Color).withOpacity(0.8)),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.account_circle_outlined,
                                        color: grey, size: 72)
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Suraj Kumar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                    Text("Ersuraj854@gmail.com",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal)),
                                    Text("ADMIN",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
                                  ],
                                )
                              ],
                            )
                          ],
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.ADD_RESTAURANT);
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.local_restaurant,
                                  color: Colors.black,
                                  size: 27,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text("Add Restaurant",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal))
                              ]),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: primaryColor,
                                size: 16,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Divider()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
