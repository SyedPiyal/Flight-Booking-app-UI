import 'package:flutter/material.dart';

class FlightViewListItem extends StatefulWidget {
  final String itemName;
  final bool index;
  final VoidCallback onTap;

  const FlightViewListItem(
      {super.key,
      required this.itemName,
      required this.index,
      required this.onTap});

  @override
  State<FlightViewListItem> createState() => _FlightViewListItemState();
}

class _FlightViewListItemState extends State<FlightViewListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
                color: widget.index ? Colors.white : Colors.transparent,
                width: 1.5),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          widget.itemName,
          style: TextStyle(
            color: widget.index ? Colors.white : const Color(0xffC1D9E5),
          ),
        ),
      ),
    );
  }
}
