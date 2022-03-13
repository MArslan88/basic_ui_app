import 'package:basic_ui_app/screens/ad_editing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 11),
      padding: const EdgeInsets.only(top: 20, left: 25, bottom: 41),
      decoration: BoxDecoration(
          color: const Color(0xFF201E27),
          // border: Border.all(color: const Color(0xFF5D5D67), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Flutter Developer Required",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                "Karachi, Pakistan",
                style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 12),
              )
            ],
          ),
          SizedBox(width: 140),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AdEditing()));
            },
            child: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 25),
          const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
