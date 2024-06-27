import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleContainer extends StatelessWidget {
  final String label;
  final Widget icon;
  final VoidCallback? onTap;

  const ModuleContainer({
    super.key,
    required this.label,
    required this.icon, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          type: MaterialType.transparency,
          elevation: 5.0,
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(40),
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: icon,
            ),
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
