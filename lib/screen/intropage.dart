import 'package:flutter/material.dart';

import 'homepage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text('Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              const SizedBox(height: 24),
              const Text('Brand new snekers and custom',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              GestureDetector(
                onTap: ()=>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> HomePage(),
                ),
              ),
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                  padding: EdgeInsets.all(25),
                  child: const Text('shop now',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:  16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
