import 'package:flutter/material.dart';
import 'package:two_d_rating/two_d_rating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 200,
            child: RatingMatrix(
              ratingRates: const [0.1, 0.2, 0.3, 0.4, 0.3],
            ),
          ),
          // child: Row(
          //   children: [
          //     const Column(
          //       children: [
          //         Text('4.8',
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //             )),
          //         Ratings(rating: 4),
          //         Text(
          //           '(3.5k Reviews)',
          //           style: TextStyle(color: Colors.grey),
          //         ),
          //       ],
          //     ),
          //     ReviewDetail(),
          //   ],
          // ),
        ),
      ),
    );
  }
}
