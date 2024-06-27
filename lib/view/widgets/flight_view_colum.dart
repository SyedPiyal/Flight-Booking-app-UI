import 'package:flutter/material.dart';

class FlightViewColumn extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  final String firstSubTitle;
  final String secondSubTitle;

  const FlightViewColumn(
      {super.key,
      required this.firstTitle,
      required this.secondTitle,
      required this.firstSubTitle,
      required this.secondSubTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                firstTitle,
                style: const TextStyle(color: Color(0xffB2B2B3),),
              ),
            ),
            Expanded(
              child: Text(
                secondTitle,
                style: const TextStyle(color: Color(0xffB2B2B3),),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                firstSubTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Expanded(
              child: Text(
                secondSubTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: Divider(
                endIndent: 40.0,
                color: Color(0xffF4F4F3),
              ),
            ),
            Expanded(
              child: Divider(
                endIndent: 40.0,
                color: Color(0xffF4F4F3),
              ),
            )
          ],
        )
      ],
    );
  }
}
