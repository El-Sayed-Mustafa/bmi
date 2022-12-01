import 'dart:ffi';

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final int result;
  final bool isMaleResult;
  final int ageResult ;


  const ResultScreen({super.key, required this.result, required this.isMaleResult, required this.ageResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              'Gender: ${isMaleResult? 'Male' : 'Female'}',
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            Text(
              'Result: ${result.round()}',
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            Text(
              'Age: $ageResult',
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
