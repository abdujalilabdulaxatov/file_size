// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(ComputationScreen());
// }

// class ComputationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int result = heavyComputation();
//     return Scaffold(
//       appBar: AppBar(title: Text('Heavy Computation')),
//       body: Center(
//         child: Text('Result: $result'),
//       ),
//     );
//   }

//   int heavyComputation() {
//     // Simulate a heavy computation
//     int sum = 0;
//     for (int i = 0; i < 10000000000; i++) {
//       sum += i;
//     }
//     return sum;
//   }
// }

void main(List<String> args) {
  BigInt n = BigInt.from(15000000000000);
  BigInt sum = n * (n + BigInt.one) ~/ BigInt.two;
  print(sum);
}
