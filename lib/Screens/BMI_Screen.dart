import 'dart:math';

import 'package:flutter/material.dart';

import 'BMI Result.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double heightValue = 120;
  double age = 20;
  double weight = 60;
  bool isMale = true;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 24, color: Colors.red),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                isMale ? Colors.red: Colors.grey[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            // Icon(
                            //   Icons.male,
                            //   size: 90,
                            // ),
                            Text("Male ", style: TextStyle(fontSize: 25))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                !isMale ? Colors.red : Colors.grey[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            // Icon(
                            //   Icons.female,
                            //   size: 90,
                            // ),
                            Text(
                              "Female ",
                              style: TextStyle(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[400]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Height ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${heightValue.round()}",
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900)),
                        const Text("CM",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w900)),
                      ],
                    ),
                    Slider(
                        value: heightValue,
                        min: 30,
                        max: 300,
                        onChanged: (value) {
                          setState(() {
                            heightValue = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Weight", style: TextStyle(fontSize: 20)),
                          Text("${weight.round()}",
                              style: const TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.w900)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: "weight--",
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: "weight++",
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("AGE", style: TextStyle(fontSize: 20)),
                          Text("${age.round()}",
                              style: const TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.w900)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: "Age--",
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: "age++",
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 70,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  result = weight / pow(heightValue / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResultScreen(
                              result: result.round(),
                              weight: weight,
                              male: isMale,
                              height: heightValue,
                            )),
                  );
                });
              },
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
