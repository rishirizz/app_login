library globals;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

bool isSmallDevice(context) {
  return MediaQuery.of(context).size.width < 986;
}
