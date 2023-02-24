import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shimmer/shimmer.dart';

class TopCreatorShimmer extends StatelessWidget {
  const TopCreatorShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Shimmer.fromColors(
            direction: ShimmerDirection.ltr,
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              width: 81,
              height: 81,
            ),
          ),
        ),
        Flexible(
          child: Shimmer.fromColors(
            direction: ShimmerDirection.ltr,
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              width: 81,
              height: 81,
            ),
          ),
        ),
        Flexible(
          child: Shimmer.fromColors(
            direction: ShimmerDirection.ltr,
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              width: 81,
              height: 81,
            ),
          ),
        ),
        Flexible(
          child: Shimmer.fromColors(
            direction: ShimmerDirection.ltr,
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              width: 81,
              height: 81,
            ),
          ),
        ),
      ],
    );
    ;
  }
}
