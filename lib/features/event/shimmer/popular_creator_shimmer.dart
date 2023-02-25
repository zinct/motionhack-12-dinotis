import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:motionhack/features/auth/cubit/auth_cubit.dart';
import 'package:unicons/unicons.dart';
import 'package:shimmer/shimmer.dart';

class PopularCreatorShimmer extends StatelessWidget {
  const PopularCreatorShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          baseColor: Colors.grey.shade200,
          highlightColor: Colors.grey.shade100,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            height: 155,
            width: 168,
          ),
        ),
        SizedBox(width: 20),
        Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          baseColor: Colors.grey.shade200,
          highlightColor: Colors.grey.shade100,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            height: 155,
            width: 168,
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
