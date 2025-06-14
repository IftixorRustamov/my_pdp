import 'dart:ui';

class AppColors {
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color silver = Color(0xffeeeeee);
  static const Color darkCyanGreen = Color(0xff012229);
  static const Color grey = Color(0xff939393);
  static const Color green = Color(0xFF32CD32);
  static const Color lightGrey = Color(0xffc4c4c4);
}

class AppGradientColors {
  // These colors are based on the screenshot and are examples.
  // You should fine-tune them based on your actual gradient definitions.
  static const List<Color> startingColors = [
    Color(0xFF4CAF50), // Green
    Color(0xFF1976D2), // Dark Blue
    Color(0xFFFFEE58), // Yellow
    Color(0xFF9C27B0), // Purple
    Color(0xFFE91E63), // Pink/Red
    Color(0xFFFF9800), // Orange
    Color(0xFF673AB7), // Deep Purple
    Color(0xFF00BCD4), // Cyan
    Color(0xFF795548), // Brown
  ];
  static const List<Color> endingColors = [
    Color(0xFF8BC34A), // Lighter Green
    Color(0xFF2196F3), // Lighter Blue
    Color(0xFFFFD54F), // Lighter Yellow
    Color(0xFFBA68C8), // Lighter Purple
    Color(0xFFF06292), // Lighter Pink/Red
    Color(0xFFFFB74D), // Lighter Orange
    Color(0xFF9575CD), // Lighter Deep Purple
    Color(0xFF4DD0E1), // Lighter Cyan
    Color(0xFFA1887F), // Lighter Brown
  ];
}

