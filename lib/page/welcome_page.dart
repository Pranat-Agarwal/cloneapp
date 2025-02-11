import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// **Small Top Image (Orange Fruit)**
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.15, left: screenWidth * 0.65),
              child: Image.asset(
                "Images/welcome1.png",
                height: screenHeight * 0.05, // Responsive height
                width: screenWidth * 0.15,  // Responsive width
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02, bottom: screenHeight * 0.01),
              child: Image.asset(
                "Images/welcome2.png",
                height: screenHeight * 0.35,
                width: screenWidth * 0.85,
              ),
            ),

            ClipOval(
              child: Container(
                height: 12,
                width: screenWidth * 0.85, // Matches image width
                color: Color(0xFFF08626),
              ),
            ),
            SizedBox(height: 50),

            Container(
              width: screenWidth,
              height: screenHeight * 0.40, // Takes the remaining screen space
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get The Frehest Fruit Salad Combo",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "BrandonGrostesque",
                      fontSize: 24, // Larger text
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 8), // Spacing between heading and subtitle

                  /// **Subtitle (Smaller Text)**
                  Text(
                    "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "BrandonGrostesque",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 20), // Spacing before button

                  SizedBox(
                    width: 327, // Set button width
                    height: 56, // Set button height
                    child: ElevatedButton(
                      onPressed: () {
                        // Add button action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFA451), // Matches theme
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Let's Continue",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "BrandonGrostesque",
                            fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
