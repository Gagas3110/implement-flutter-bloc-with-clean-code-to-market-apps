import 'package:flutter/material.dart';
import 'package:news_app/model/product_model.dart';
import 'package:news_app/ui/home/components/product_card.dart';

class ProductListContainer extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  final int current;
  final int index;

  const ProductListContainer({
    required this.title,
    required this.products,
    required this.current,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    if (current == index) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.5,
            color: Colors.grey.shade300,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(title),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: products.length > 3 ? 4 : products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  if (index == 3 && products.length > 3) {
                    return GestureDetector(
                      onTap: () {
                        // Handle more products action
                      },
                      child: Container(
                        width: 160, // Adjust width as needed
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Icon(Icons.more_horiz),
                        ),
                      ),
                    );
                  } else {
                    return ProductCard(
                      onPressed: () {},
                      itemNo: index,
                      model: products[index],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      );
    } else {
      return SizedBox();
    }
  }
}