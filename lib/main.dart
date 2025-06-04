import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan.shade100,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Image Application',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.cyan.shade900,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 11),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/image/owl.jpg",
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
