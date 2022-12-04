import 'package:animated_flutter_nft_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../models.dart';

class NFTCardWidget extends StatelessWidget {
  final NFT nft;
  const NFTCardWidget({super.key, required this.nft});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushBidScreen(context, nft);
      },
      child: Hero(
        tag: nft.image,
        child: Container(
          height: 180,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(nft.image), fit: BoxFit.cover),
              borderRadius: radius10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: GlassmorphicContainer(
              border: 0,
              height: 40,
              width: double.infinity,
              borderRadius: 10,
              blur: 5,
              linearGradient: linearGradient,
              borderGradient: borderLinearGradient,
              child: Center(
                child: Text(
                  nft.price.toString(),
                  style: mediumTextStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
