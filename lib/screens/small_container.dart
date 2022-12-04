import 'package:animated_flutter_nft_app/constants.dart';
import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color backgroundColor;
  final Color foregroundColor;

  const SmallContainer(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.backgroundColor,
      required this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: radius10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$title k',
            style: mediumTextStyle.copyWith(color: foregroundColor),
          ),
          Text(
            subTitle,
            style: smallTextStyle.copyWith(color: foregroundColor),
          )
        ],
      ),
    );
  }
}
