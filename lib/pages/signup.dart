import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Wrap(children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SvgPicture.asset(
                  'assets/icons/signup.svg',
                  width: 280,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(100)),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'example@gmail.com',
                          hintStyle: TextStyle(fontSize: 20),
                          border: InputBorder.none,
                          prefix: Icon(Icons.person)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(100)),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: '  your password',
                          hintStyle: TextStyle(fontSize: 20),
                          border: InputBorder.none,
                          prefix: Icon(Icons.lock),
                          suffix: Icon(Icons.visibility)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      'SignUp',
                      style: TextStyle(fontSize: 27),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "you have an accoung? ",
                      style: TextStyle(fontSize: 17),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        "LogIn",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 220,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.purple[99],
                        child: Divider(
                          color: Colors.purple[100],
                          thickness: 1,
                        ),
                      )),
                      const Text('OR',style: TextStyle(fontSize: 15),),
                      Expanded(
                          child: Container(
                        color: Colors.purple[99],
                        child: Divider(
                          color: Colors.purple[100],
                          thickness: 1,
                        ),
                      )),
                    ],
                  ),
                )
                ,Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.purple,width: 1),
                      shape: BoxShape.circle,
                     ),
                      child: SvgPicture.asset('assets/icons/facebook.svg',height: 40,color: Colors.purple[700],)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.purple,width: 1),
                      shape: BoxShape.circle,
                     ),
                      child: SvgPicture.asset('assets/icons/google-plus.svg',height: 40,color: Colors.purple[700],)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.purple,width: 1),
                      shape: BoxShape.circle,
                     ),
                      child: SvgPicture.asset('assets/icons/twitter.svg',height: 40,color: Colors.purple[700],)),
                  )
                ],)
              ],
            ),
          ),
          
          Positioned(
              top: 0,
              child: Image.asset(
                'assets/images/signup_top.png',
                width: 120,
              )),
          // Positioned(
          //     bottom: 0,
          //     right: 0,
          //     child: Image.asset(
          //       'assets/images/login_bottom.png',
          //       width: 140,
          //     ))
        ],
      ),
    ]));
  }
}
