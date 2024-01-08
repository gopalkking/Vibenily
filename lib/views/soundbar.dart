import 'package:flutter/material.dart';

class soundbar extends StatelessWidget {
  final AssetImage image;

  const soundbar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            "Dsp, Andrea jermian, ..",
            style: Theme.of(context).textTheme.caption,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
