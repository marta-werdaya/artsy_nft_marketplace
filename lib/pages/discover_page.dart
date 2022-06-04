import 'package:artsy_nft_marketplace/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/preview_card.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                PreviewCard(),
                PreviewCard(),
                PreviewCard(),
                PreviewCard(),
                PreviewCard(),
                PreviewCard(),
                PreviewCard(),
                PreviewCard(),
                PreviewCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
