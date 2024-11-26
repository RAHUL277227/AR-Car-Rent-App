import 'package:flutter/material.dart';

class NexBox extends StatelessWidget {
  final Widget? child;
  const NexBox({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 8,
              offset: const Offset(4, 4),
            ),
      
            BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 8,
              offset: const Offset(-4,-4),
            )
          ]
        ),
        child: child,
        padding: EdgeInsets.all(12),
      ),
    );
  }
}