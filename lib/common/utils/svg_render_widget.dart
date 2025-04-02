import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Renders and svg asset given a [svgPath]
class SvgRenderWidget extends StatelessWidget {
  final String svgPath;
  final double? height;
  final double? width;
  final Color? color;

  const SvgRenderWidget({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      height: height,
      width: width,
      fit: BoxFit.scaleDown,
    );
  }
}
