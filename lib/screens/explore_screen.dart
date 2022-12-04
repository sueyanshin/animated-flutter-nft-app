import 'package:animated_flutter_nft_app/constants.dart';
import 'package:animated_flutter_nft_app/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_images.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPinkColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Explore'),
              centerTitle: true,
              background: AppbarImages(),
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 10,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (_, index) {
              return CustomListTile(collection: nftCollection[index]);
            },
            childCount: 10,
          ))
        ],
      ),
    );
  }
}
