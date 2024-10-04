import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Top section with red box and image
              Container(
                height: 200,
                color: Colors.red,
                child: Center(
                  child: ClipOval(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/p.png',
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                          // Overlay text
                          Text(
                            'LAB 3',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Second section with two boxes (Green and Blue)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Blue box with image
                  Container(
                    width: 200,
                    height: 120,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  // Green box
                  Container(
                    width: 110,
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              ),
              // Single rectangle containing numbers from 1 to 9
              Container(
                width: 80,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Colors.purple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(9, (index) {
                    return Text(
                      '${index + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    );
                  }),
                ),
              ),
              // Bottom note
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'PRACTICE MORE THAN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN',
                  textAlign: TextAlign.center,
                ),
              ),
              // Downward rectangle with text and image
              Container(
                width: 700,
                height: 100,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LEADING',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10), // Add space between text and image
                    Image.asset(
                      'assets/plant.jpg', // Update the image path
                      width: 30, // Set the width for the image
                      height: 30, // Set the height for the image
                    ),
                    SizedBox(width: 10), // Add space between image and text
                    Text(
                      'TRAILING',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
