import 'package:car_parking/Screen/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    },);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.red,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/walpaper.png"),fit: BoxFit.fill)),
      ),
    );
  }
}
