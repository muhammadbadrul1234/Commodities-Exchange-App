import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Feedback",
        ),
        backgroundColor: Color(0xFF126172),
        elevation: 0,
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
                    .copyWith(topRight: Radius.circular(0))),
            padding: EdgeInsets.all(10),
            elevation: 10,
            color: Colors.grey.shade100,
            //color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.developer_board, color: Color(0xFF126172)),
                        SizedBox(width: 10),
                        Text('Developers'),
                      ],
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.apps, color: Color(0xFF126172)),
                        SizedBox(width: 10),
                        Text('About App'),
                      ],
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people, color: Color(0xFF126172)),
                        SizedBox(width: 10),
                        Text('Supervisors'),
                      ],
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.no_encryption_rounded,
                            color: Color(0xFF126172)),
                        SizedBox(width: 10),
                        Text('Licences'),
                      ],
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.feedback, color: Color(0xFF126172)),
                        SizedBox(width: 10),
                        Text('Feedback'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                Navigator.pushNamed(context, '/Developer');
              } else if (value == 2) {
                Navigator.pushNamed(context, '/App');
              } else if (value == 3) {
                Navigator.pushNamed(context, '/Supervisor');
              } else if (value == 4) {
                Navigator.pushNamed(context, '/Licence');
              } else if (value == 5) {
                Navigator.pushNamed(context, '/Feedback');
              }
            },
          ),
        ],
      ),
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
                onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ), // onPressed
                child: const Text('Rate',
                  style: TextStyle(
                      fontSize: 20,
                    color: Colors.green,
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
