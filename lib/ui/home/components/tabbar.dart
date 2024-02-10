import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TabButtonBody extends StatelessWidget {
  const TabButtonBody({
    super.key,
    required this.index,
    required this.current,
    required this.items,
  });

  final int index;
  final int current;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    var curIndex = current == index;
    return AnimatedContainer(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.all(5),
      width: 30.w,
      height: 40,
      decoration: BoxDecoration(
        color: curIndex
            ? Colors.blue.shade200.withOpacity(0.2)
            : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
        border: curIndex
            ? Border.all(color: Colors.blue.shade200.withOpacity(0.2), width: 1)
            : Border.all(color: Colors.grey.shade200, width: 1),
      ),
      child: Center(
        child: Text(
          items[index],
          style: TextStyle(
              fontSize: 12, color: curIndex ? Colors.black : Colors.black),
        ),
      ),
    );
  }
}
