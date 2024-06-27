import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightListItem extends StatelessWidget {
  const FlightListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // from time and place ----------------------

                const Column(
                  children: [
                    Text(
                      "04:30",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'DAK',
                      style: TextStyle(color: Color(0xffB2B2B3), fontSize: 8),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),

                const SizedBox(
                  height: 5,
                  width: 20,
                  child: Divider(
                    thickness: .5,
                    color: Color(0xffB2B2B3),
                  ),
                ),

                // middle column ----------------------
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '06h 45m',
                      style: TextStyle(color: Color(0xffB2B2B3), fontSize: 8),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: CircleAvatar(
                        foregroundColor: Color(0xff6CA6C1),
                        maxRadius: 3,
                      ),
                    ),
                    Text(
                      '2 Stops',
                      style: TextStyle(color: Color(0xffB2B2B3), fontSize: 8),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                  width: 20,
                  child: Divider(
                    thickness: .5,
                    endIndent: 3,
                    color: Color(0xffB2B2B3),
                  ),
                ),
                Transform.rotate(
                  angle: 1.5,
                  child: const Icon(
                    Icons.flight,
                    color: Color(0xff6CA6C1),
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),

                const Column(
                  children: [
                    Text(
                      "09:30",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'BNK',
                      style: TextStyle(color: Color(0xffB2B2B3), fontSize: 8),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // from time and place ----------------------

                const Column(
                  children: [
                    Text(
                      "04:30",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'DAK',
                      style: TextStyle(color: Color(0xffB2B2B3), fontSize: 8),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),

                const SizedBox(
                  height: 5,
                  width: 20,
                  child: Divider(
                    thickness: .5,
                    color: Color(0xffB2B2B3),
                  ),
                ),

                // middle column ----------------------
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '06h 45m',
                      style: TextStyle(color: Color(0xffB2B2B3), fontSize: 8),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: CircleAvatar(
                        foregroundColor: Color(0xff6CA6C1),
                        maxRadius: 3,
                      ),
                    ),
                    Text(
                      '2 Stops',
                      style: TextStyle(color: Color(0xffB2B2B3), fontSize: 8),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                  width: 20,
                  child: Divider(
                    thickness: .5,
                    endIndent: 3,
                    color: Color(0xffB2B2B3),
                  ),
                ),
                Transform.rotate(
                  angle: 1.5,
                  child: const Icon(
                    Icons.flight,
                    color: Color(0xff6CA6C1),
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),

                const Column(
                  children: [
                    Text(
                      "09:30",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'BNK',
                      style: TextStyle(
                        color: Color(0xffB2B2B3),
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: DottedLine(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Colors.black,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  // icons ----------------------

                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: const Color(0xff6CA6C1),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Transform.rotate(
                      angle: 0.5,
                      child: const Icon(
                        Icons.flight,
                        color: Color(0xff6CA6C1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 60,),

                  const Text(
                    'Cost:',
                    style: TextStyle(
                      color: Color(0xffB2B2B3),
                      fontSize: 10,
                    ),
                  ),
                  const Text(
                    "\$80",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(width: 15,),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFFE66D)),
                      child: const Text(
                        'Select',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
