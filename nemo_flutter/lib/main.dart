
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_client/nemo_client.dart';
import 'package:flutter/material.dart';
import 'package:nemo_flutter/ui/navigation/routes/routes.dart';
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
          Routes.CREATE_NEW_PASSWORD_SCREEN: (context) => const CreateNewPasswordScreen()

        },
        home: const SplashScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.
  String? _resultMessage;
  String? _errorMessage;

  final _textEditingController = TextEditingController();

  // Calls the `hello` method of the `example` endpoint. Will set either the
  // `_resultMessage` or `_errorMessage` field, depending on if the call
  // is successful.
  void _callHello() async {
    try {
      final result = await client.note.sum(2, 2);
      //final insert = await client.note.createNote(Notes(text: _textEditingController.text));
      //final insertUser=await client.foodWhaleUserAuth.signup(FoodWhaleUser(firstName: "Suraj", lastName: "Kumar", email: "ersuraj854@gmail.com", countryCode: "91", mobileNo: "8591270921", password: "suraj@123", country: "India", isAccountVerified: false));
      final signInUser = await client.foodWhaleUserAuth
          .signIn("ersuraj854@gmail.com", "suraj@1263");
      setState(() {
        _errorMessage = null;
        _resultMessage = signInUser!.firstName;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: _callHello,
                child: const Text('Send to Server'),
              ),
            ),
            _ResultDisplay(
              resultMessage: _resultMessage,
              errorMessage: _errorMessage,
            ),
          ],
        ),
      ),
    );
  }
}

// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }

    return Container(
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
