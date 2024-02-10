import 'package:flutter/material.dart';
import 'package:news_app/ui/home/components/tabbar.dart';

class TabButtonRow extends StatelessWidget {
  final int current;
  final List<String> items;
  final Function(int) onTap;

  const TabButtonRow({
    required this.current,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => onTap(index),
                child:
                    TabButtonBody(current: current, items: items, index: index),
              ),
            ],
          );
        },
      ),
    );
  }
}
