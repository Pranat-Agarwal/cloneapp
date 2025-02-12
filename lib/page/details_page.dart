import 'package:flutter/material.dart';
import 'package:cloneapp/page/home_page.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 60 , right: 250) ,
                child:   SizedBox(
                    width: 120,
                    height: 40,
                    child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                      child: Text("< Go Back",
                      style: TextStyle(
                        color: Color(0xFF27214D),
                        fontFamily: "BrandonGrostesque",
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),),
                    ),
                  ),
            ),
            Image.asset("Images/dish1.png",),
            SizedBox(height: 50,),
            SizedBox(
              child: Text("Quinoa Fruit Salad"),
            )
          ],
        ),
      ),
    );
  }
}
