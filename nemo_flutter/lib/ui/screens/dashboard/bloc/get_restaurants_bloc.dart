import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/state/sign_in_state.dart';
import 'package:nemo_flutter/ui/screens/dashboard/event/getRestaurantsEvent.dart';
import 'package:nemo_flutter/ui/screens/dashboard/state/get_restaurants_state.dart';

import '../../../../../main.dart';

class RestaurantBloc extends Bloc<GetRestaurantEvent, GetRestaurantsState> {
  RestaurantBloc() : super(GetRestaurantInitial()) {
    on<GetRestaurantEvent>(onFetchRestaurantsEvent);
  }

  Future<void> onFetchRestaurantsEvent(
      GetRestaurantEvent event, Emitter<GetRestaurantsState> emit) async {
    emit(GetRestaurantLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      var result = await client.foodieRestaurantsRepo
          .searchRestaurents(event.lat, event.long, event.radius);

      try {
        if (result.isNotEmpty) {
          print(result.length);
          emit(GetRestaurantSuccess(foodieRestaurants: result));
        } else {
          emit(GetRestaurantFail());
        }
      } catch (error) {
        print(error);
        emit(GetRestaurantFail());
      }
    });
  }

  Future<String?> sendUserVerificationCodeEmail(String email) async {
    var result = await client.foodWhaleUserAuth.sendAccountVerifyOTPLink(email);
    if (result.status) {
      return result.message;
    } else {
      return null;
    }
  }
}
