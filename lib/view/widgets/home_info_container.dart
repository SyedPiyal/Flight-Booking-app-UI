import 'package:flutter/material.dart';

class HomeInfoContainer extends StatelessWidget {
  final Widget icon;

  const HomeInfoContainer({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      elevation: 10.0,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {},
        child: Card(
          surfaceTintColor: Colors.white,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xff6CA6C1),
                  child: icon,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 30),
                  child: Column(
                    children: [
                      Text(
                        'Need help where to go?',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'Find great destinations',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
