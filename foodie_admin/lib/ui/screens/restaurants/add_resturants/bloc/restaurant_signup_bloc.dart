import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_admin/ui/screens/restaurants/add_resturants/event/restaurant_signup_event.dart';

import 'package:nemo_client/nemo_client.dart';
import 'package:foodie_admin/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:foodie_admin/ui/screens/auth/signin/state/sign_in_state.dart';
import 'package:foodie_admin/ui/screens/auth/signup/state/sign_up_state.dart';

import '../../../../../main.dart';
import '../state/restaurant_sign_up_state.dart';


class RestaurantSignUpBloc extends Bloc<RestaurantSignUpEvent, RestaurantSignUpState> {
  RestaurantSignUpBloc() : super(RestaurantSignUpInitial()) {
    on<RestaurantSignUpEvent>(onRestaurantSignUpEvent);
  }

  Future<void> onRestaurantSignUpEvent(
      RestaurantSignUpEvent event, Emitter<RestaurantSignUpState> emit) async {
    emit(RestaurantSignUpLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result = await client.foodieRestaurantsRepo.signup(FoodieRestaurants(
            restaurantsName: event.restaurantName,
            email: event.email,
            countryCode: event.countryCode,
            mobileNo: event.mobile,
            password: event.email,
            restaurantsImage: event.restaurantImage,
            addressGeoLat: event.restaurantLat,
            addressGeoLong:  event.restaurantLong,
            isAccountVerified: event.isVerified, address: event.restaurantAddress));
            
            if(result.status){
             emit(RestaurantSignUpSuccess(message: result.message));
            }else {
               emit(RestaurantSignUpFail(message: result.message));
            }
            
        
      } catch (error) {
        print(error.toString());
        emit(RestaurantSignUpFail(message: error.toString()));
      }
    });
  }
}
