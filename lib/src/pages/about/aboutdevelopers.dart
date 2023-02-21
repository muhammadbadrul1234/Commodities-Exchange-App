import 'package:flutter/material.dart';


class AboutDeveloper extends StatelessWidget {
  const AboutDeveloper({Key? key}) : super(key: key);

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
          "Developers",
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
               
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/Badrul.jpeg'),
              ),
             
              Padding(
                padding: EdgeInsets.only(top: 10,  left: 25, right: 25),
                child: Text(
                  'Md Badrul Alom Tawsyat',
                  textAlign: TextAlign.justify,
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
                  "As a skilled software engineer with over 2 years of experience in developing high-quality software applications, I am passionate about leveraging technology to solve complex problems and improve user experiences. I have a proven track record of delivering software projects on time and on budget, and I am committed to staying up-to-date with the latest technologies and industry trends.\nWith a strong foundation in computer science and expertise in multiple programming languages, including C, C++, Python, HTML5, CSS3, Flutter, Dart, Java, MongoDB, Firebase, Fortran, Node.js, React.js, Bootstrap-5, JavaScript.\n\nI have the ability to design, develop and deploy software systems that meet user requirements and exceed expectations. I have experience working in both small and large teams, collaborating with cross-functional teams and stakeholders, and leading development efforts.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    //align text to center
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 60),
                CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/Badrul.jpeg'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Text(
                  'Farhana Akter Munni'
                  '',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    //align text to center

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
                  '',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    //align text to center
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 40),
                CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/Badrul.jpeg'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 25, right: 25),
                child: Text(
                  'Nafisa Tasmiya'
                  '',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    //align text to center

                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'I am incredibly interested in creating new websites and apps as a computer science and engineering student. In addition, I enjoy learning various technology words because I am interested in them. Also, I have extensive knowledge of HTML, CSS, Bootstrap, JavaScript, C, C++, Java, and Python.\n\nI am also skilled at managing and improving communication skills.I am incredibly interested in creating new websites and apps as a computer science and engineering student. In addition, I enjoy learning various technology words because I am interested in them.\n\nI am also skilled at managing and improving communication skills.'
                  '',
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
