import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:timeless/screens/login_screen/new_login_screen.dart';
import 'models/user_manager.dart';
import 'screens/first_screen/first_screen_app.dart';
import 'screens/login_screen/login_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserManager(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        routes: {
          '/LoginScreen': (_) => LoginScreen(),
          '/SignUp': (_) => SignUp(),
          '/FirstScreen': (_) => FirstScreen(),
          '/AnimatedTransiton': (_) => AnimationTransition(),
          '/LoginRoute': (_) => NewLoginScreen(),
        },
        debugShowCheckedModeBanner: false,
        title: 'tela timeless',
        home: AnimationTransition(),
      ),
    ),
  );
}

class AnimationTransition extends StatefulWidget {
  @override
  _AnimationTransitionState createState() => _AnimationTransitionState();
}

class _AnimationTransitionState extends State<AnimationTransition> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      imageBackground: const AssetImage("assets/Logo.gif"),
      loaderColor: Colors.transparent,
      navigateAfterSeconds: NewLoginScreen(),
    );
  }
}
