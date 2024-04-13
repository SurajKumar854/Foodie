import 'package:nemo_client/nemo_client.dart';

class GetRestaurantsState {}

class GetRestaurantInitial extends GetRestaurantsState {}

class GetRestaurantLoading extends GetRestaurantsState {}

class GetRestaurantFail extends GetRestaurantsState {}

class GetRestaurantSuccess extends GetRestaurantsState {
  List<FoodieRestaurants> foodieRestaurants;


  GetRestaurantSuccess({required this.foodieRestaurants});
}
