import 'package:animated_flutter_nft_app/constants.dart';
import 'package:animated_flutter_nft_app/models.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final NFTCollection collection;
  const CustomListTile({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushNFTScreen(context, collection);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: roundWhite,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: radius10,
              child: Image(
                image: AssetImage(collection.cover),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  collection.name,
                  style: mediumTextStyle.copyWith(
                    color: kBlackColor,
                  ),
                ),
                Text(
                  collection.by,
                  style: mediumTextStyle.copyWith(
                    color: kBlackColor,
                  ),
                )
              ],
            ),
            const Spacer(),
            Text(
              '${collection.floorPrice} ETH',
              style: mediumTextStyle.copyWith(color: kBlackColor),
            )
          ],
        ),
      ),
    );
  }
}
