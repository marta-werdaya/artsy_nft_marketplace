import 'dart:async';

import 'package:artsy_nft_marketplace/constant/app_colors.dart';
import 'package:artsy_nft_marketplace/widgets/time_box.dart';
import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'time_ticker.dart';

class CountDownBid extends StatefulWidget {
  final Function onTimeIsUp;

  const CountDownBid({
    Key? key,
    required this.onTimeIsUp,
  }) : super(key: key);

  @override
  State<CountDownBid> createState() => _CountDownBidState();
}

class _CountDownBidState extends State<CountDownBid> {
  Duration duration = Duration(seconds: 3);
  Timer? timer;
  bool isEnd = false;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void addTime() {
    final addSeconds = -1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
        isEnd = true;
        widget.onTimeIsUp();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  @override
  Widget build(BuildContext context) {
    //
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return isEnd
        ? Text(
            'Time is Up!!!',
            style: TextStyle(color: AppColor.danger),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimeBox(
                child: Text(
                  duration.inHours.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.p16,
                  ),
                ),
              ),
              TimeTicker(),
              TimeBox(
                child: Text(
                  minutes,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.p16,
                  ),
                ),
              ),
              TimeTicker(),
              TimeBox(
                child: Text(
                  seconds,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.p16,
                  ),
                ),
              ),
            ],
          );
  }
}
