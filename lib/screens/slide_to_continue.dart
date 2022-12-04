import 'package:animated_flutter_nft_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class SlideToContinue extends StatelessWidget {
  final Color foreground;
  final Color background;
  final String text;
  final Function()? onComfrim;
  const SlideToContinue(
      {super.key,
      required this.foreground,
      required this.background,
      this.onComfrim,
      required this.text});

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: ActionSlider.standard(
    //     backgroundColor: background,
    //     toggleColor: foreground,
    //     child: Text(
    //       text,
    //       style: mediumTextStyle,
    //     ),
    //     icon: const Icon(
    //       Icons.keyboard_arrow_right_rounded,
    //       color: kPinkColor,
    //     ),

    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConfirmationSlider(
        onConfirmation: () => onComfrim?.call(),
        backgroundColor: background,
        foregroundColor: foreground,
        text: text,
        textStyle: mediumTextStyle,
        sliderButtonContent: const Icon(
          Icons.arrow_forward_rounded,
          color: kPinkColor,
        ),
      ),
    );
  }
}
