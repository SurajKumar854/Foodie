
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_client/nemo_client.dart';
import 'package:flutter/material.dart';
import 'package:nemo_flutter/ui/navigation/routes/routes.dart';
import 'package:nemo_flutter/ui/screens/auth/account_verified_otp/account_verify_otp_screen.dart';
import 'package:nemo_flutter/ui/screens/auth/account_verified_otp/bloc/account_verify_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/create_new_password/bloc/create_new_password_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/create_new_password/create_new_password_screen.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/reset_password_screen.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/bloc/reset_password_otp_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/reset_password_otp_screen.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/bloc/sign_in_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/sign_in_screen.dart';
import 'package:nemo_flutter/ui/screens/auth/signup/bloc/sign_up_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/signup/sign_up_screen.dart';
import 'package:nemo_flutter/ui/screens/dashboard/bloc/get_restaurants_bloc.dart';
import 'package:nemo_flutter/ui/screens/dashboard/dashboard_screen.dart';
import 'package:nemo_flutter/ui/screens/splashscreen/splash_screen.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'country_code_picker/country_localizations.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignInBloc>(create: (_) => SignInBloc()),
        BlocProvider<SignUpBloc>(create: (_) => SignUpBloc()),
        BlocProvider<ResetPasswordBloc>(create: (_) => ResetPasswordBloc()),
        BlocProvider<ResetPasswordOTPBloc>(create: (_) => ResetPasswordOTPBloc()),
        BlocProvider<CreateNewPasswordBloc>(create: (_) => CreateNewPasswordBloc()),
        BlocProvider<AccountVerifyBloc>(create: (_) => AccountVerifyBloc()),
        BlocProvider<RestaurantBloc>(create: (_) => RestaurantBloc()),
      ],
      child: MaterialApp(
        color: Colors.white,
        supportedLocales: [
          const Locale('en'),
          const Locale('ar'),
          const Locale('es'),
          const Locale('de'),
          const Locale('fr'),
          const Locale('el'),
          const Locale('et'),
          const Locale('nb'),
          const Locale('nn'),
          const Locale('pl'),
          const Locale('pt'),
          const Locale('ru'),
          const Locale('hi'),
          const Locale('ne'),
          const Locale('uk'),
          const Locale('hr'),
          const Locale('tr'),
          const Locale('lv'),
          const Locale('lt'),
          const Locale('ku'),
          const Locale('nl'),
          const Locale('it'),
          const Locale('ko'),
          const Locale('ja'),
          const Locale('id'),
          const Locale('cs'),
          const Locale('ht'),
          const Locale('sk'),
          const Locale('ro'),
          const Locale('bg'),
          const Locale('ca'),
          const Locale('he'),
          const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
          const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
        ],
        localizationsDelegates: [
          CountryLocalizations.delegate,

        ],

        debugShowCheckedModeBanner: false,
        title: 'Foodie',
        routes: {
          Routes.SPLASH_SCREEN: (context) => SplashScreen(),
          Routes.ONBOARD_SCREEN: (context) => const SignInScreen(),
          Routes.DASHBOARD_SCREEN: (context) => const DashboardScreen(),
          Routes.SIGN_UP_SCREEN: (context) => const SignUpScreen(),
          Routes.RESET_SCREEN: (context) => const ResetPasswordScreen(),
          Routes.RESET_OTP_SCREEN: (context) => const ResetPasswordOtpScreen(),
          Routes.CREATE_NEW_PASSWORD_SCREEN: (context) => const CreateNewPasswordScreen(),
          Routes.ACCOUNT_VERIFY_SCREEN: (context) => const AccountVerifyOtpScreen()

        },
        home: const SplashScreen(),
      ),
    );
  }
}

