import 'package:doctor_hunt/core/extensions/context_util.dart';
import 'package:flutter/material.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';

class CustomElevatedButton extends StatefulWidget {
  final String text;
  final Color? textColor;
  final VoidCallback onPressed;
  final bool isLoading;
  final Widget? prefixIcon;
  final double? width;
  final double height;
  final double borderRadius;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.isLoading = false,
    this.prefixIcon,
    this.width,
    this.height = 56,
    this.borderRadius = 12,
  });

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    final effectiveTextColor = widget.textColor ?? AppColors.colorWhite;
    final screenWidth = context.screenWidth;

    return AbsorbPointer(
      absorbing: widget.isLoading,
      child: AnimatedContainer(
        curve: Curves.easeInOutQuint,
        duration: const Duration(milliseconds: 500),
        width: widget.isLoading
            ? screenWidth * 0.5
            : (widget.width ?? screenWidth),
        height: widget.height,
        child: ElevatedButton(
          onPressed: widget.isLoading ? null : widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: !widget.isLoading
                ? AppColors.colorGradientGreenStart
                : AppColors.colorSlateGray,
            disabledBackgroundColor: AppColors.colorSlateGray,
            foregroundColor: effectiveTextColor,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
          ),
          child: widget.isLoading
              ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: AppColors.colorWhite,
                ),
              )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.prefixIcon != null) ...[
                      widget.prefixIcon!,
                      const SizedBox(width: 12),
                    ],
                    Flexible(
                      child: Text(
                        widget.text,
                        style: TextStyle(
                          color: effectiveTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
