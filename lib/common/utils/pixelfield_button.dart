import 'package:flutter/cupertino.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/pixelfield_button_styles.dart';

class PixelFieldButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final double? textSize;
  final double cornerRadius;
  final bool isEnabled;
  final bool isLoading;
  final bool? isGradientEnabled;
  final Color? color;
  final Color? textColor;
  final Color? disabledBackgroundColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final PixelFieldButtonStyle? buttonStyle;
  final TextStyle? buttonTextStyle;
  final VoidCallback onPressed;
  final Widget? leading;

  const PixelFieldButton({
    this.height = PixelFieldButtonStyle.buttonDefaultHeight,
    this.width = PixelFieldButtonStyle.buttonDefaultWidth,
    this.isEnabled = PixelFieldButtonStyle.buttonIsEnable,
    this.isLoading = PixelFieldButtonStyle.buttonIsLoading,
    this.cornerRadius = PixelFieldButtonStyle.buttonCornerRadius,
    this.buttonStyle,
    this.padding,
    this.color,
    required this.text,
    required this.onPressed,
    this.leading,
    super.key,
    this.borderColor,
    this.disabledBackgroundColor,
    this.buttonTextStyle,
    this.isGradientEnabled = false,
    this.textColor,
    this.textSize,
  });

  @override
  State<PixelFieldButton> createState() => _StCharlesButton();
}

class _StCharlesButton extends State<PixelFieldButton> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        alignment: Alignment.center,
        height: widget.height,
        width: widget.width,
        padding: widget.padding,
        decoration: BoxDecoration(
          border: !widget.isEnabled
              ? null
              : Border.all(
                  width: 1.0,
                  color: widget.borderColor ?? context.secondaryColor,
                ),
          borderRadius: BorderRadius.circular(widget.cornerRadius),
          color: !widget.isEnabled
              ? widget.disabledBackgroundColor ??
                  context.themeData.shadowColor.withValues(alpha:0.3)
              : widget.color ?? context.secondaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!widget.isLoading)
              FittedBox(
                child: Row(
                  children: [
                    if (widget.leading != null) widget.leading!,
                    Text(
                      widget.text,
                      style: (widget.buttonTextStyle ??
                              context.textTheme.headlineLarge)
                          ?.copyWith(
                        height: (23.2 / 16),
                        fontSize: widget.textSize ?? 16,
                        color: widget.isEnabled
                            ? widget.textColor ?? context.primaryColor
                            : context.themeData.shadowColor,
                      ),
                    )
                  ],
                ),
              ),
            if (widget.isLoading) ...[
              CupertinoActivityIndicator(
                color: context.primaryColor,
              ),
            ],
          ],
        ),
      ),
    );
  }

  void showClickEffect(bool show) {
    if (isActive()) {
      setState(() {
        isClicked = show;
      });
    }
  }

  bool isActive() => widget.isEnabled
      ? widget.isLoading
          ? false
          : true
      : false;
}
