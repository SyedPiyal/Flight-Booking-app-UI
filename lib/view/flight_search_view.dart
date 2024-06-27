import 'package:fligh_booking/view/widgets/flight_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlightSearchView extends StatelessWidget {
  const FlightSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6CA6C1),
        iconTheme: const IconThemeData(
          color: Colors.white, //change  color here
        ),
      ),
      body: Column(
        children: [
          // body top ----------------------

          Container(
            margin: const EdgeInsets.only(bottom: 25),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              color: Color(0xff6CA6C1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),

            // search info column ----------------------

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Dhaka",
                          style: TextStyle(
                            color: Color(0xffC1D9E5),
                          ),
                        ),
                        Text(
                          "DAK",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.swap_horiz,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "bankok",
                          style: TextStyle(
                            color: Color(0xffC1D9E5),
                          ),
                        ),
                        Text(
                          "BNK",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Adult 1",
                      style: TextStyle(color: Color(0xffC1D9E5)),
                    ),
                    Text(
                      "Economy",
                      style: TextStyle(color: Color(0xffC1D9E5)),
                    ),
                    Text(
                      "Aug 14 - Aug 19",
                      style: TextStyle(color: Color(0xffC1D9E5)),
                    ),
                  ],
                )
              ],
            ),
          ),

          Row(
            children: [
              const Text(
                '122 ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                'Result',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/ic_filter.png',
                    height: 20,
                    width: 20,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const FlightListItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
