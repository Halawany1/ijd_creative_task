class CustomThumbShape extends SliderComponentShape {
  final double thumbRadius;

  CustomThumbShape({required this.thumbRadius});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;

    // Paint the border (white color)
    final Paint borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0; // Thickness of the border

    // Paint the thumb (black fill)
    final Paint fillPaint = Paint()
      ..color = AppColors.yellow
      ..style = PaintingStyle.fill;

    // Draw the thumb with a border
    canvas.drawCircle(center, thumbRadius, borderPaint);
    canvas.drawCircle(
        center, thumbRadius - 1.5, fillPaint); // Adjust to fit within border
  }
}