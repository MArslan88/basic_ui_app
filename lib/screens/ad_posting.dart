import 'dart:js';

import 'package:basic_ui_app/screens/parts/app_button.dart';
import 'package:basic_ui_app/screens/parts/app_textfield.dart';
import 'package:basic_ui_app/screens/parts/card_view.dart';
import 'package:basic_ui_app/screens/parts/search_textfield.dart';
import 'package:basic_ui_app/screens/signin.dart';
import 'package:flutter/material.dart';

import 'job_listing.dart';

class AdPosting extends StatelessWidget {
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
                  const Text("Add New Job",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              ),

              const SizedBox(
                  height: 31), // to create space between text and TextField
              const AppTextField(
                placeholder: 'Enter position name',
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
                child: const TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                      hintText: "Describe Requirement...",
                      hintStyle:
                          TextStyle(color: Color(0xff8f8f9e), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 137),
              AppButton(
                  label: "Submit Job",
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
