// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/pages/homescreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';

import '../../navigationbar/home.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  late File imageFile;

  void selectImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);
    
    if(pickedFile != null) {
      cropImage(pickedFile);
    }
    
    
    setState(() {
      imageFile = File(pickedFile!.path);
    });
  }

  void cropImage(XFile file) async {

  }
  void showPhotoOptions() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Choose an option"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    selectImage(ImageSource.gallery);
                  },
                  title: Text("Choose from gallery"),
                ),
                ListTile(
                  onTap: () {
                    selectImage(ImageSource.camera);
                  },
                  title: Text("Take a photo"),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Complete Profile'),
        ),
        body: SafeArea(
          child: Container(
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CupertinoButton(
                  onPressed: () {
                    showPhotoOptions();
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    child: Icon(
                      Icons.person,
                      size: 50.0,
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  color: Colors.blue,
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
