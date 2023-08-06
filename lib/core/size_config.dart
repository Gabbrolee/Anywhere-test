import 'dart:math';

import 'package:flutter/material.dart';

class DeviceType {
  bool deviceType(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double diagonalSize = sqrt(
      (deviceWidth * deviceWidth) + (deviceHeight * deviceHeight),
    );

    // You can adjust the threshold value to differentiate between tablets and phones
    const double tabletThreshold = 600.0; // Example threshold, you can adjust this


    print("THE DIAGONAL SIZE IS:$diagonalSize");
    return diagonalSize >= tabletThreshold;
  }
}

late bool isTablet;
