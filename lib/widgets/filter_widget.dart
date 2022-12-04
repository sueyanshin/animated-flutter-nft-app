import 'package:animated_flutter_nft_app/constants.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kBlackColor,
        borderRadius: radius100,
      ),
      child: Row(children: [
        Spacer(),
        Text(
          'Filter',
          style: mediumTextStyle,
        ),
        Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: kWhiteColor, shape: BoxShape.circle),
          child: const Icon(
            Icons.tune_rounded,
            color: kBlackColor,
          ),
        )
      ]),
    );
  }
}
