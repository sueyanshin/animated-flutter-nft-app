import 'package:animated_flutter_nft_app/constants.dart';
import 'package:animated_flutter_nft_app/widgets/rotate_listview.dart';
import 'package:flutter/material.dart';

import 'slide_to_continue.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        child: Scaffold(
          body: Column(
            children: [
              RotateListView(nft: nftCollection[0].nft?.sublist(0, 5)),
              RotateListView(nft: nftCollection[1].nft?.sublist(0, 4)),
              RotateListView(nft: nftCollection[2].nft?.sublist(0, 4)),
              RotateListView(nft: nftCollection[3].nft?.sublist(0, 5)),
              const Spacer(),
              SizedBox(
                width: 250,
                child: Text(
                  'Discovered NFT Collection',
                  textAlign: TextAlign.center,
                  style: bigTextStyle.copyWith(color: kBlackColor),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: Text(
                  homeDiscriptionText,
                  textAlign: TextAlign.center,
                  style: smallTextStyle.copyWith(color: kBlackColor),
                ),
              ),
              SlideToContinue(
                foreground: kWhiteColor,
                background: kPinkColor,
                text: "Slide To Continue",
                onComfrim: () => pushExploreScreen(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
