import 'package:fligh_booking/view/flight_view.dart';
import 'package:fligh_booking/view/widgets/home_info_container.dart';
import 'package:fligh_booking/view/widgets/home_module_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F8F9),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/ic_menu_2.png',
                  width: 20,
                  height: 20,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
        backgroundColor: const Color(0xff6CA6C1),
      ),
      body: Column(
        children: [
          // body top ----------------------

          Container(
            height: 220,
            margin: const EdgeInsets.only(bottom: 25),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xff6CA6C1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Search Your",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Flight",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ModuleContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                           MaterialPageRoute(
                            builder: (context) =>  FlightView(),
                          ),
                        );
                      },
                      label: 'Flight',
                      icon: Transform.rotate(
                        angle: 0.5,
                        child: const Icon(
                          Icons.flight,
                          color: Color(0xff6CA6C1),
                        ),
                      ),
                    ),
                     ModuleContainer(
                      onTap: () {},
                      label: 'Hotel',
                      icon: const Icon(
                        Icons.location_pin,
                        color: Color(0xff6CA6C1),
                      ),
                    ),
                     ModuleContainer(
                      onTap: () {},
                      label: 'Car Hires',
                      icon: const Icon(
                        Icons.car_crash,
                        color: Color(0xff6CA6C1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Be inspired',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15,bottom: 10),
                  child: HomeInfoContainer(
                    icon: Icon(
                      CupertinoIcons.globe,
                      color: Colors.white,
                    ),
                  ),
                ),

                HomeInfoContainer(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
