import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../../../model/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel model;
  final int itemNo;
  final Function() onPressed;

  const ProductCard({
    required this.onPressed,
    required this.model,
    required this.itemNo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 160,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.blue.shade200.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 0.4,
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 5),
                        Text(
                          model.rating?.rate.toString() ?? '',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  CachedNetworkImage(
                    imageUrl: model.image ?? '-',
                    width: 12.w,
                    height: 12.h,
                    placeholder: (context, url) => Container(
                        child: Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: shimmerCard())),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      model.title?.split(" ").first ?? '',
                      //'hhhhhi',
                      style: TextStyle(fontSize: 10),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Icon(Icons.attach_money),
                    Text(
                      model.price.toString(),
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget shimmerCard() {
    return Container(
      height: 1.h,
      width: 1.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
    );
  }
}
