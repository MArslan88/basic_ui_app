import 'dart:js';

import 'package:basic_ui_app/screens/parts/app_button.dart';
import 'package:basic_ui_app/screens/parts/app_textfield.dart';
import 'package:basic_ui_app/screens/parts/card_view.dart';
import 'package:basic_ui_app/screens/parts/search_textfield.dart';
import 'package:basic_ui_app/screens/signin.dart';
import 'package:flutter/material.dart';

import 'job_listing.dart';

class AdEditing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 27, top: 89, bottom: 59, right: 27),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => JobListing()));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  const Text("Edit Job",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              ),

              const SizedBox(
                  height: 31), // to create space between text and TextField
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border:
                        Border.all(color: const Color(0xFF5D5D67), width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  controller: TextEditingController(text: "Flutter Developer"),
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                  decoration: const InputDecoration(
                      hintText: "Enter position name",
                      hintStyle:
                          TextStyle(color: Color(0xff8f8f9e), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 26),
              Container(
                margin: const EdgeInsets.only(top: 28),
                padding: const EdgeInsets.only(top: 15, bottom: 318, left: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border:
                        Border.all(color: const Color(0xFF5D5D67), width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  controller: TextEditingController(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                  decoration: const InputDecoration(
                      hintText: "Describe Requirement...",
                      hintStyle:
                          TextStyle(color: Color(0xff8f8f9e), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 137),
              AppButton(
                  label: "Update Job",
                  onPress: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => JobListing()));
                  })
            ],
          ),
        ),
      ),
    );
  }

  void onSignPress() {}
}
