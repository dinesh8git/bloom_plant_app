import 'package:flutter/material.dart';

class PlantDetailsScreen extends StatelessWidget {
  const PlantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEF3EF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// TOP IMAGE
            Stack(
              children: [
                Image.asset(
                  "assets/images/tomato.jpg",
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  top: 40,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,

              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// TITLE
                  const Text(
                    "Solanum lycopersicum (Tomato)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0C3B1E),
                    ),
                  ),
                  SizedBox(height: 20),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 18, color: Color(0xff0C3B1E)),
                  ),

                  const SizedBox(height: 10),

                  /// DESCRIPTION
                  const Text(
                    "Tomato is a visually appealing and not only adds a touch of elegance to indoor spaces but also carries a positive and symbolic message of prosperity and well-being.",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),

                  const SizedBox(height: 20),

                  /// DIVIDER
                  const Divider(),

                  const SizedBox(height: 10),

                  /// FAVORED CONDITIONS
                  const Text(
                    "Favored Conditions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  /// ROW 1
                  Row(
                    children: [
                      /// WATER
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber.shade100,
                              ),
                              child: const Icon(
                                Icons.water_drop,
                                size: 35,
                                color: Colors.amber,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Water",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text("250 ml"),
                              ],
                            ),
                          ],
                        ),
                      ),

                      /// SUNLIGHT
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple.shade100,
                              ),

                              child: const Icon(
                                Icons.wb_sunny,
                                color: Colors.purple,
                                size: 35,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Sunlight",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                  ),
                                ),
                                Text("Normal"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  /// ROW 2
                  Row(
                    children: [
                      /// FERTILIZER
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red.shade100,
                              ),
                              child: const Icon(
                                Icons.grass,
                                color: Colors.red,
                                size: 35,
                              ),
                            ),
                            const SizedBox(width: 12),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Fertilizer",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                                Text("70 ml"),
                              ],
                            ),
                          ],
                        ),
                      ),

                      /// HUMIDITY
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange.shade100,
                              ),
                              child: const Icon(
                                Icons.water,
                                color: Colors.orange,
                                size: 35,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Humidity",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                  ),
                                ),
                                Text("54%"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 95),

                  /// BUTTON
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1E5A2E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add to My Plants",
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
