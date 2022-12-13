import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../interfaces/utils.dart';

class Responsive extends Utils {
  static double distancePercentFromHeight(
    BuildContext context,
    double percent,
  ) {
    double totalHeight = 892, totalPercent = 100;
    totalHeight = MediaQuery.of(context).size.height;

    return (percent * totalHeight) / totalPercent;
  }

  static double distancePercentFromWidth(
    BuildContext context,
    double percent,
  ) {
    double totalWidth = 412, totalPercent = 100;
    totalWidth = MediaQuery.of(context).size.width;

    return (percent * totalWidth) / totalPercent;
  }

  static double distanceText(
    BuildContext context,
    double percent,
  ) {
    double c = 412, totalPercent = 100;
    double a = MediaQuery.of(context).size.width;
    double b = MediaQuery.of(context).size.height;

    c = math.sqrt(math.pow(a, 2) + math.pow(b, 2));

    return (percent * c) / totalPercent;
  }
}
