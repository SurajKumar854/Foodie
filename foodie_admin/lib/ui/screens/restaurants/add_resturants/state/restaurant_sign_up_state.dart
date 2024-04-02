

class RestaurantSignUpState {

}

class RestaurantSignUpInitial extends RestaurantSignUpState{
}

class RestaurantSignUpLoading extends RestaurantSignUpState{
}

class RestaurantSignUpFail extends RestaurantSignUpState{
  String message;
  RestaurantSignUpFail({required this.message});

}

class RestaurantSignUpSuccess extends RestaurantSignUpState{
  String message;
  RestaurantSignUpSuccess({required this.message});
}
