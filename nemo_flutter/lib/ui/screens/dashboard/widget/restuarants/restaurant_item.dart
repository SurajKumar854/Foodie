import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nemo_client/nemo_client.dart';

class RestaurantListItem extends StatelessWidget {
  FoodieRestaurants foodieRestaurants;

  RestaurantListItem({required this.foodieRestaurants, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // Rounded corners
        color: Colors.white, // Change the background color to white
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 3), // Offset from the container
          ),
        ],
      ),
      child: ClipRRect(
        // ClipRRect widget to clip the child with rounded corners

        borderRadius: BorderRadius.circular(20),
        child: Container(
            child: Column(
          children: [
            Container(
                width: double.infinity,
                child: SvgPicture.asset(
                    "assets/images/restaurant_placeholder.svg",
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.fill)),
            Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(
                          foodieRestaurants.restaurantsName,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Text(
                                  "4.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 12,
                                )
                              ],
                            )),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(
                         foodieRestaurants.address,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                        Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              children: [
                                Text(
                                  "30 min",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle),
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  height: 4,
                                  width: 4,
                                ),
                                Text(
                                  "3 km",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ))
                      ],
                    )
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
