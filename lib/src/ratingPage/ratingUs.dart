/*
add tf
make it popup
if rated the show previous rating
edit
not now
 */

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingUs extends StatelessWidget {
  const RatingUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 120),
              child: const Text(
                'Are you enjoying our app?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Text('Would you mind rating us?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
            ),
            RatingBarIndicator(
              rating: 3,
              itemCount: 5,
              itemSize: 50,
              direction: Axis.horizontal,
              itemBuilder: (context, index){
                return const Icon(Icons.star, color: Colors.amber);
             }, // itemBuilder
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              width: 100,
              height: 50,
              //elevated button





              child: ElevatedButton(
                onPressed: (){}, // onPressed
                child: Text('Rate',
                  style: TextStyle(
                      fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ), // child
            ),
          ], // children
        ),
      ),
      );
  }
}
