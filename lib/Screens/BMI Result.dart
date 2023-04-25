import 'package:flutter/material.dart';

import '../Components/Components.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool male;
  final double weight;
  final double height;

  const BMIResultScreen({
    required this.weight,
    required this.result,
    required this.male,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI_Result " , style: TextStyle(fontSize: 24,color: Colors.red),),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios ,color: Colors.red,),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    richTextComponent(text1: "Gender", text2: " : ${male ? "Male " : "Female"} "),
                    separatorWidget(),
                    richTextComponent(text1: "Result", text2: " : $result "),
                    separatorWidget(),
                    richTextComponent(text1: "Weight", text2: " : $weight ",),
                    separatorWidget(),
                    richTextComponent(text1: "Height", text2: " : ${height.round()} ",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


