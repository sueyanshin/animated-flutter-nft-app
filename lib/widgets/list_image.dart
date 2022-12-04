import 'package:animated_flutter_nft_app/constants.dart';
import 'package:animated_flutter_nft_app/models.dart';
import 'package:flutter/material.dart';

class ListImage extends StatelessWidget {
  final NFT nft;
  const ListImage({super.key, required this.nft});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: radius10,
            child: Hero(
              tag: nft.image,
              child: Image(
                image: AssetImage(nft.image),
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
