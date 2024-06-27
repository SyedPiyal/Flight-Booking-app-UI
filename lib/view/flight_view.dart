import 'package:fligh_booking/view/flight_search_view.dart';
import 'package:fligh_booking/view/widgets/flight_view_colum.dart';
import 'package:fligh_booking/view/widgets/flight_view_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightView extends StatefulWidget {
  const FlightView({super.key});

  @override
  State<FlightView> createState() => _FlightViewState();
}

class _FlightViewState extends State<FlightView> {
  final List<String> tripName = ['One Way', 'Round Trip', 'Multi City'];

  int indexItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6CA6C1),
        iconTheme: const IconThemeData(
          color: Colors.white, //change  color here
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 250,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Color(0xff6CA6C1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // welcome text ----------------------

                  const Text(
                    'Book Your Flight',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // list of trip  ----------------------

                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        String item = tripName[index];
                        return FlightViewListItem(
                          itemName: item,
                          index: indexItem == index,
                          onTap: () {
                            setState(() {
                              indexItem = index;
                            });
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),

            // middle container for flight search ----------------------

            const Positioned(
              top: 130,
              right: 20,
              left: 20,
              child: Card(
                surfaceTintColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                /*padding:
                    const EdgeInsets.only(top: 25,left: 30,bottom: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),*/
                child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 30, bottom: 40),
                  child: Column(
                    children: [
                      FlightViewColumn(
                        firstTitle: 'From',
                        secondTitle: 'To',
                        firstSubTitle: 'Dhaka',
                        secondSubTitle: 'Bankok',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: FlightViewColumn(
                          firstTitle: 'Date',
                          secondTitle: 'Return',
                          firstSubTitle: '01/07/19',
                          secondSubTitle: '01/07/19',
                        ),
                      ),
                      FlightViewColumn(
                        firstTitle: 'Passenger',
                        secondTitle: 'Class',
                        firstSubTitle: '1 adult',
                        secondSubTitle: 'Economy',
                      )
                    ],
                  ),
                ),
              ),
            ),

            // button for search ----------------------

            Positioned(
              bottom: 230,
              left: 135,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FlightSearchView(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor:
                      const Color(0xffFFE66D) /*const Color(0xffFFE66D)*/,
                      padding: const EdgeInsets.all(20)),
                  child: const Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                  )),
            ),

            // best deals section ----------------------

            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Best Deals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/iv_sunset.jpg',
                          height: 50,
                          width: 45,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, right: 25),
                          child: Text(
                            "Prague",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Text(
                          "From ",
                          style: TextStyle(
                            color: Color(0xffB2B2B3),
                          ),
                        ),
                        const Text(
                          "\$180",
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
