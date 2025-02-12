import 'package:flutter/material.dart';
import 'package:cloneapp/page/welcome_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:  Image.asset(
                      "Images/Startimg.png",
                      height: MediaQuery.of(context).size.height/7,
                      width: MediaQuery.of(context).size.width/5,
                      fit: BoxFit.cover,
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 95,right: 95),
              decoration: BoxDecoration(
                  color: Color(0xFFFFA451),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)
                        )),
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Fruit Hub",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'BadScript',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}