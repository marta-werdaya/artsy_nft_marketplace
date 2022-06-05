import 'package:flutter/material.dart';

class IconDisplay extends StatelessWidget {
  final String path;
  const IconDisplay({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: 24,
    );
  }
}
