import 'package:basic_ui_app/screens/ad_posting.dart';
import 'package:basic_ui_app/screens/job_listing.dart';
import 'package:basic_ui_app/screens/signin.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdPosting(),
    );
  }
}
