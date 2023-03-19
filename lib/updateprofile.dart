import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:settyl_app/profile.dart';

class Updateprofile extends StatefulWidget {
  const Updateprofile({super.key});

  @override
  State<Updateprofile> createState() => _UpdateprofileState();
}

class _UpdateprofileState extends State<Updateprofile> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  TextEditingController _address = TextEditingController();
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    _userName.text = FirebaseAuth.instance.currentUser!.displayName.toString();
    _emailField.text = FirebaseAuth.instance.currentUser!.email.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // Appbar Title for the page.
          title: Text(
            "Update Profile",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: Color(0xFF141414),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF141414),
            child: Column(children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 65,
              ),
              SizedBox(height: 20),
              Text(
                'Please enter your details to register.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  // Text Controller for email.
                  controller: _userName,
                  decoration: InputDecoration(
                      // Label on Email input Dialog Box
                      labelText: "Update Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 13, 13, 13),
                        // child: SvgPicture.asset(
                        //   // Suffix logo for mail.
                        //   "assets/Mail.svg",
                        //   height: 18,
                        // ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "Enter updated Name",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: TextFormField(
                  // Keyboard type declaration for @ button on keyboard.
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
                  // Text Controller for email.
                  controller: _emailField,
                  decoration: InputDecoration(
                      // Label on Email input Dialog Box
                      labelText: "Update Email",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 13, 13, 13),
                        child: SvgPicture.asset(
                          // Suffix logo for mail.
                          "assets/Mail.svg",
                          height: 18,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "Enter your new Email",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  controller: _passwordField,
                  decoration: InputDecoration(
                      labelText: "Update Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: SvgPicture.asset(
                          "assets/Lock.svg",
                          height: 18,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "Enter your new password",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextFormField(
                  obscureText: false,
                  style: TextStyle(color: Colors.white),
                  controller: _address,
                  decoration: InputDecoration(
                      labelText: "Update Addresss",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: SvgPicture.asset(
                          "assets/Lock.svg",
                          height: 18,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "Enter your new Address",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28)),
                        backgroundColor: Color(0xFF0000AE)),
                    onPressed: () async {
                      updateprofile(_userName.text, _emailField.text,
                          _passwordField.text, _address.text);
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }

  void updateprofile(
      String name, String email, String password, String add) async {
    await FirebaseAuth.instance.currentUser!.updateDisplayName(name);
    await FirebaseAuth.instance.currentUser!.updateEmail(email);
    await FirebaseAuth.instance.currentUser!.updatePassword(password);
    final docUser = FirebaseFirestore.instance.collection('Users').doc(email);
    final json = {
      'Add': add,
    };
    await docUser.set(json);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Profile(),
        ));
  }
}
