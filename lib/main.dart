import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color(0xFF2631C1);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Widget"),
        elevation: 0,
        backgroundColor: mainColor,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: LottieBuilder.asset('assets/developer-skills.json'),
          ),
          SizedBox(
            height: 300,
            child: LottieBuilder.asset('assets/doctor-illustration.json'),
          ),
          SizedBox(
            height: 300,
            child: LottieBuilder.asset('assets/meee.json'),
          ),
          SizedBox(
            height: 300,
            child: LottieBuilder.asset('assets/friends.json'),
          ),
          SizedBox(
            height: 300,
            child: LottieBuilder.asset('assets/flutter.json'),
          ),
          SizedBox(
            height: 300,
            child: LottieBuilder.network('https://assets9.lottiefiles.com/packages/lf20_ypj4dzcs.json'),
          ),
          // https://assets9.lottiefiles.com/packages/lf20_ypj4dzcs.json
        ],
      ),
    );
  }
}
