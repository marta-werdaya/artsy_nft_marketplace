import 'package:flutter/material.dart';

import '../widgets/preview_card.dart';
import '../widgets/search_bar.dart';

class WistlistPage extends StatelessWidget {
  const WistlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WistList'),
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
