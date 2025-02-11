import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 88, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// **Top Bar: Menu Icon & My Basket**
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, size: 30.0),
                Column(
                  children: [
                    Icon(Icons.shopping_bag, size: 30, color: Color(0xFFFFA451)),
                    Text(
                      "My basket",
                      style: TextStyle(
                        fontFamily: "BrandonGrostesque",
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                )
              ],
            ),

            /// **Welcome Text**
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: RichText(
                text: TextSpan(
                  text: "Hello Tony, ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "BrandonGrostesque",
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "what fruit salad\n", // Breaks line after "salad"
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: "BrandonGrostesque",
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "combo do you want today?", // Continues on the next line
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: "BrandonGrostesque",
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15), // Space before search bar

            /// **Search Bar**
            Row(
              children: [
                /// **Search Input Field**
                Expanded(
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Search for fruit salad combo",
                      hintStyle: TextStyle(
                        fontFamily: "BrandonGrostesque",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF86869E),
                      ),
                      fillColor: Color(0xFFF3F4F9), // Light background
                      filled: true,
                      prefixIcon: Icon(Icons.search, color: Color(0xFF86869E), size: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none, // No border
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10), // Space between search bar & icon

                /// **Additional Icon**
                Icon(Icons.directions, color: Colors.black, size: 24),
              ],
            ),
            SizedBox(height: 20,),
            Text("Recommended Combo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              fontFamily: "BrandonGrostesque",
              color: Color(0xFF27214D)
            ),
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First Product Card
            Container(
              width: 150,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite_border, color: Colors.orange, size: 24),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Images/dishr1.png",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Honey lime combo",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₦ 2,000",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.2),
                        ),
                        child: Icon(Icons.add, color: Colors.orange, size: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Second Product Card
            Container(
              width: 150,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite_border, color: Colors.orange, size: 24),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Images/dishr2.png", // Change to second product image
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Berry mango combo",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₦ 8,000",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.2),
                        ),
                        child: Icon(Icons.add, color: Colors.orange, size: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hottest",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF938DB5),fontSize: 16,fontFamily: "BrandonGrostesque"),),
                Text("Popular",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF938DB5),fontSize: 16,fontFamily: "BrandonGrostesque"),),
                Text("New combo",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF938DB5),fontSize: 16,fontFamily: "BrandonGrostesque"),),
                Text("Top",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF938DB5),fontSize: 16,fontFamily: "BrandonGrostesque"),)
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 140,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFAEB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.favorite_border, color: Colors.orange, size: 24),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "Images/dish1.png", // Change to second product image
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Quinoa fruit salad",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "₦ 10,000",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange.withOpacity(0.2),
                              ),
                              child: Icon(Icons.add, color: Colors.orange, size: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 140,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF0F0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.favorite_border, color: Colors.orange, size: 24),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "Images/dish2.png", // Change to second product image
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Tropical fruit salad",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "₦ 10,000",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange.withOpacity(0.2),
                              ),
                              child: Icon(Icons.add, color: Colors.orange, size: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 140,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1EFF6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.favorite_border, color: Colors.orange, size: 24),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "Images/dish3.png", // Change to second product image
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "melon fruit salad",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "₦ 10,000",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange.withOpacity(0.2),
                              ),
                              child: Icon(Icons.add, color: Colors.orange, size: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
