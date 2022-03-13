import 'dart:js';

import 'package:basic_ui_app/screens/ad_posting.dart';
import 'package:basic_ui_app/screens/parts/app_button.dart';
import 'package:basic_ui_app/screens/parts/app_textfield.dart';
import 'package:basic_ui_app/screens/parts/card_view.dart';
import 'package:basic_ui_app/screens/parts/search_textfield.dart';
import 'package:basic_ui_app/screens/signin.dart';
import 'package:flutter/material.dart';

class JobListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 27, top: 79, bottom: 59, right: 27),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 14),
              Row(
                children: [
                  Text("Muhammad Arslan",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => SignIn()));
                    },
                    child: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

              const SizedBox(
                  height: 19), // to create space between text and TextField
              const SearchTextField(placeholder: "Search keywords.."),
              const SizedBox(height: 26),
              CardView(),
              CardView(),
              CardView(),
              CardView(),
              CardView(),
              CardView(),
              CardView(),
              CardView(),
              CardView(),
              CardView(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AdPosting()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }

  void onSignPress() {}
}
