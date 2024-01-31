// Based on the scalebar plugin example of flutter_map
//
// BSD 3-Clause License
//
// Copyright (c) 2018-2023, the 'flutter_map' authors and maintainers
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// * Redistributions of source code must retain the above copyright notice, this
//   list of conditions and the following disclaimer.
//
// * Redistributions in binary form must reproduce the above copyright notice,
//   this list of conditions and the following disclaimer in the documentation
//   and/or other materials provided with the distribution.
//
// * Neither the name of the copyright holder nor the names of its
//   contributors may be used to endorse or promote products derived from
//   this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import 'package:flutter/material.dart';

class ScalebarPainter extends CustomPainter {
  final double width;
  final EdgeInsets padding;
  final String text;
  final double lineWidth;
  final double lineHeight;
  final Color lineColor;
  final TextStyle? textStyle;

  final Paint _linePaint;

  ScalebarPainter({
    required this.width,
    required this.text,
    required this.padding,
    required this.textStyle,
    required this.lineWidth,
    required this.lineHeight,
    required this.lineColor,
  }) : _linePaint = Paint()
          ..color = lineColor
          ..strokeCap = StrokeCap.square
          ..strokeWidth = lineWidth;

  @override
  void paint(Canvas canvas, Size size) {
    const topPaddingCorr = -5;
    final paddingLeft = padding.left;
    var paddingTop = padding.top + topPaddingCorr;
    final halfLineWidth = lineWidth / 2;

    // draw text label
    final textSpan = TextSpan(style: textStyle, text: text);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(
      canvas,
      Offset(
        width / 2 - textPainter.width / 2 + paddingLeft + halfLineWidth,
        paddingTop,
      ),
    );

    paddingTop += textPainter.height;
    final leftLineBottom = Offset(
      paddingLeft + halfLineWidth,
      lineHeight + paddingTop,
    );
    final rightLineBottom = Offset(
      paddingLeft + width + halfLineWidth,
      lineHeight + paddingTop,
    );

    // draw start line
    canvas.drawLine(
      Offset(leftLineBottom.dx, paddingTop),
      leftLineBottom,
      _linePaint,
    );

    // draw end line
    canvas.drawLine(
      Offset(rightLineBottom.dx, paddingTop),
      rightLineBottom,
      _linePaint,
    );

    // draw middle line
    final middleX = (leftLineBottom.dx + rightLineBottom.dx) / 2;
    canvas.drawLine(
      Offset(middleX, paddingTop + lineHeight / 2),
      Offset(middleX, leftLineBottom.dy),
      _linePaint,
    );

    // draw bottom line
    canvas.drawLine(leftLineBottom, rightLineBottom, _linePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
