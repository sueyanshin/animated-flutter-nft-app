import 'dart:math';

import 'package:animated_flutter_nft_app/widgets/list_image.dart';
import 'package:flutter/material.dart';
import '../models.dart';

class RotateListView extends StatefulWidget {
  final List<NFT>? nft;
  const RotateListView({super.key, required this.nft});

  @override
  State<RotateListView> createState() => _RotateListViewState();
}

class _RotateListViewState extends State<RotateListView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 2);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(seconds: Random().nextInt(5) + 5),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Transform.rotate(
        angle: -0.2,
        child: ListView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          children: widget.nft!.map((nft) {
            return ListImage(nft: nft);
          }).toList(),
        ),
      ),
    );
  }
}
