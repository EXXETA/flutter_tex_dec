import 'package:flutter/material.dart';
import 'package:flutter_text_draw_decorator/src/modules/circle/painter/closed_circle_painter.dart';
import 'package:flutter_text_draw_decorator/src/modules/circle/painter/open_circle_painter.dart';
import 'package:flutter_text_draw_decorator/src/modules/circle/decorations/circle_decoration.dart';

enum CircleStyle {
  basic,
  circled;

  CustomPainter getPainter(Text text, {CircleDecoration decoration = const CircleDecoration(color: Colors.orange, strokeWidth: 1)}) {
    switch (this) {
      case CircleStyle.basic:
        return OpenCirclePainter(text: text.data ?? '', textStyle: text.style ?? const TextStyle(), decoration: decoration);
      case CircleStyle.circled:
        return ClosedCirclePainter(text: text.data ?? '', textStyle: text.style ?? const TextStyle(), decoration: decoration);
    }
  }
}
