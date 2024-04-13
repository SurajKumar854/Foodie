import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nemo_flutter/config/user_info.dart';
import 'package:nemo_flutter/ui/common/widget/colors/colors.dart';
import 'package:nemo_flutter/ui/screens/dashboard/bloc/get_restaurants_bloc.dart';
import 'package:nemo_flutter/ui/screens/dashboard/event/getRestaurantsEvent.dart';
import 'package:nemo_flutter/ui/screens/dashboard/state/get_restaurants_state.dart';
import 'package:nemo_flutter/ui/screens/dashboard/widget/dashboard_appbar.dart';
import 'package:nemo_flutter/ui/screens/dashboard/widget/restuarants/restaurant_item.dart';
import 'package:nemo_flutter/ui/screens/dashboard/widget/search_bar.dart';

import '../../../utils/utils.dart';
import '../../common/widget/app_bar.dart';
import '../auth/signin/widget/sign_in_loading_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var title = "Foodie";
  double bodyPadding = 16;

  @override
  void initState() {
    super.initState();
    context
        .read<RestaurantBloc>()
        .add(GetRestaurantEvent(lat: userLat, long: userLong, radius: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: DashboardAppBar(),
        body: BlocConsumer<RestaurantBloc, GetRestaurantsState>(
            builder: (BuildContext context, GetRestaurantsState state) {
          return SingleChildScrollView(
            child: Container(
                color: Colors.white,
                width: double.infinity,
                padding: EdgeInsets.all(bodyPadding),
                child: Column(

                  children: [
                    FoodieSearchbar(),
                    SizedBox(height: 10,),
                    if (state is GetRestaurantSuccess) ...{
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.foodieRestaurants.length,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext context, int index) {
                            return RestaurantListItem(
                              foodieRestaurants: state.foodieRestaurants[index],
                            );
                          })
                    }
                  ],
                )),
          );
        }, listener: (BuildContext context, GetRestaurantsState state) {
          if (state is GetRestaurantLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is GetRestaurantFail) {
            Navigator.pop(context);
            Utils.toastMessage("Fail to fetch restaurants");
          }
          if (state is GetRestaurantSuccess) {
            Navigator.pop(context);
          }
        }));
  }
}
