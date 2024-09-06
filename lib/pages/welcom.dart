import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcom extends StatefulWidget {
  const Welcom({super.key});

  @override
  State<Welcom> createState() => _WelcomState();
}

class _WelcomState extends State<Welcom> {
  bool isWord = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
              top: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 100,
              )),
          Positioned(
              bottom: 0,
              child: Image.asset('assets/images/main_bottom.png', width: 80)),
          Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'welcom',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 30,
                ),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  width: 320,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(100)),
                      child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'LogIn',
                        style: TextStyle(fontSize: 27),
                      )),
                  
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(100)),
                      child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(fontSize: 27),
                      )),
                  
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
