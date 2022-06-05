import 'package:flutter/material.dart';

import 'list_transaction.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTransaction(),
        ListTransaction(),
        ListTransaction(),
        ListTransaction(),
        ListTransaction(),
        ListTransaction(),
      ],
    );
  }
}
