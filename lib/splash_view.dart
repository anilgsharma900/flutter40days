import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_40_days/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(microseconds: 3000), () {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => const LoginView()), (_) => false);
    });
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.amber),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child: Center(
            child: Image.asset(
              "assets/image/onboard1.png",
              fit: BoxFit.contain,
              width: 300,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
