import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final List<String> buttonValues = [
    '1',
    '2',
    '3',
    '+',
    '4',
    '5',
    '6',
    '-',
    '7',
    '8',
    '9',
    '*',
    '%',
    '0',
    '=',
    '/',
  ];
  addData() {}
  subData() {}
  MulData() {}
  DivData() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextFormField(
            decoration: InputDecoration(
                constraints: BoxConstraints(maxWidth: 330),
                border: OutlineInputBorder(borderSide: BorderSide(width: 2))),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Wrap(
              spacing: 5,
              runSpacing: 10,
              children: List.generate(
                buttonValues.length,
                (index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text(
                    buttonValues[index],
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                ),
              ),
            )),
      ]),
    );
  }
}
