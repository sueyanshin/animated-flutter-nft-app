import 'package:animated_flutter_nft_app/constants.dart';
import 'package:animated_flutter_nft_app/screens/slide_to_continue.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../models.dart';

class BidScreen extends StatefulWidget {
  final NFT nft;
  const BidScreen({super.key, required this.nft});

  @override
  State<BidScreen> createState() => _BidScreenState();
}

class _BidScreenState extends State<BidScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 1), () {
        showModel(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.nft.price,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.nft.image), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Scaffold(
              backgroundColor: kTransparent,
              appBar: AppBar(
                toolbarHeight: 90,
                backgroundColor: kTransparent,
                leading: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: radius10, color: kWhiteColor),
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: kBlackColor,
                    ),
                  ),
                ),
                actions: [
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/profile.png'),
                            fit: BoxFit.cover),
                        borderRadius: radius100,
                        color: kWhiteColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showModel(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: kTransparent,
        barrierColor: kTransparent,
        enableDrag: false,
        context: context,
        transitionAnimationController: AnimationController(
            vsync: this,
            duration: Duration(seconds: 1),
            reverseDuration: Duration(milliseconds: 1)),
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              Navigator.pop(context);
              Navigator.pop(context);
              return true;
            },
            child: GlassmorphicContainer(
              width: double.infinity,
              height: 200,
              borderRadius: 0,
              linearGradient: linearGradient,
              border: 0,
              blur: 5,
              borderGradient: borderLinearGradient,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      '${widget.nft.price.toString().padRight(4, '0')} ETH',
                      style: bigTextStyle,
                    ),
                    const SizedBox(height: 10),
                    SlideToContinue(
                      foreground: kWhiteColor,
                      background: kBlackColor,
                      text: 'Place Bid Now',
                      onComfrim: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
