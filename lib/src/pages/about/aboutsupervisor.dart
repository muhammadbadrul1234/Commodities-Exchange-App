import 'package:flutter/material.dart';

class Supervisor extends StatelessWidget {
  const Supervisor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Supervisor",
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
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              Text(
                'Supervisor',
                textAlign: TextAlign.left,
                style: TextStyle(
                  //align text to center
                  

                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                
              ),
              Image(
                image: AssetImage('assets/images/rum.png'),
                height: 160,
              ),

              Text(
                'Co-Supervisor',
                textAlign: TextAlign.left,
                style: TextStyle(
                  //align text to center

                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                image: AssetImage('assets/images/DCP.jpeg'),
                height: 160,
              ),
             
            
              
            ],
          ),
        ),
      ),
    );
  }
}
