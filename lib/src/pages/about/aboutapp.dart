import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   toolbarHeight: 25,

      // ),
      appBar: AppBar(
        title: Text(
          "About Application",
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
          // reverse: true,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              //SizedBox(height: 5),
              //add image
              Image(
                image: AssetImage('assets/images/DSE_logo.png'),
                height: 100,
                width: 100,
              ),

              Padding(
                padding: EdgeInsets.only(top: 10, left: 25, right: 25),
                child: Text(
                  'Commodities Exchange Application',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //align text to center

                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "The Stock Market App is a powerful mobile application that has been specifically designed to provide users with access to real-time market data, news, and analytical tools for trading stocks. As one of the most popular financial instruments, stocks can be a profitable investment option for those who are willing to do their due diligence and invest wisely.The Stock Market App provides a comprehensive set of features that can assist both novice and experienced investors in navigating the often complex world of the stock market. One of the key features of the app is the ability to create customizable watchlists, which allow users to track the performance of specific stocks, indices, or other financial instruments. With personalized alerts and notifications, users can stay up-to-date on their investments and make informed trading decisions in real-time.The app offers advanced charting tools, technical analysis, and customizable indicators, which help users to identify trading opportunities and monitor market trends. By having access to real-time data, users can make informed decisions about their investments, including when to buy or sell a particular stock.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    //align text to center
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
