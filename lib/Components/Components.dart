import 'package:flutter/material.dart';

Widget richTextComponent({
  required String text1,
  required String text2,
}) =>
    RichText(
        text: TextSpan(
            text: text1,
            style: const TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            children: <TextSpan>[
          TextSpan(
            text: text2,
            style: const TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          )
        ]));

Widget separatorWidget() => Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 2.0,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
