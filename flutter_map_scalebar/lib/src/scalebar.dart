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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_scalebar/src/painter.dart';
import 'package:flutter_map_scalebar/src/utils.dart';

class Scalebar extends StatelessWidget {
  final TextStyle? textStyle;
  final Color lineColor;
  final double strokeWidth;
  final double lineHeight;
  final EdgeInsets padding;
  final int _relWidth;

  const Scalebar({
    super.key,
    this.textStyle = const TextStyle(color: Colors.black, fontSize: 14),
    this.lineColor = Colors.black,
    this.strokeWidth = 2,
    this.lineHeight = 5,
    this.padding = const EdgeInsets.all(10),
    int relativeWidth = 3,
  }) : assert(
          relativeWidth >= 1 && relativeWidth <= 6,
          'The Scalebar `relativeWidth` parameter value is not allowed. '
          'The min is 0 and the max value 6.',
        ), _relWidth = relativeWidth - 4;

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);
    final index =
        max(0, min(_scale.length - 1, camera.zoom.round() - _relWidth));
    final distance = _scale[index];
    final center = camera.center;
    final start = camera.project(center);
    final targetPoint = calculateEndingGlobalCoordinates(
      start: center,
      startBearing: 90,
      distance: distance.toDouble(),
    );
    final end = camera.project(targetPoint);

    return CustomPaint(
      painter: ScalebarPainter(
        width: end.x - start.x,
        text: distance > 999
            ? '${(distance / 1000.0).toStringAsFixed(0)} km'
            : '$distance m',
        lineColor: lineColor,
        strokeWidth: strokeWidth,
        padding: padding,
        lineHeight: lineHeight,
        textStyle: textStyle,
      ),
    );
  }
}

const _scale = <int>[
  15000000,
  8000000,
  4000000,
  2000000,
  1000000,
  500000,
  250000,
  100000,
  50000,
  25000,
  15000,
  8000,
  4000,
  2000,
  1000,
  500,
  250,
  100,
  50,
  25,
  10,
  5,
  1,
];
