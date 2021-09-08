import 'dart:math';
import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get background;
}

class AppGradientDefault extends AppGradients {
  @override
  Gradient get background => LinearGradient(colors: 
    [
      Color(0xFF40b38c),
      Color(0xFF45cc93)
    ],
    transform: GradientRotation(2.35619 + pi)
  );
}