import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.textInputType,
    required this.hintText,
    this.controller,
    this.prefixIconPath,
    this.prefixWidget,
    this.validator,
    this.isPassword = false,
    this.onChanged,
    this.maxLines = 1,
    this.enabled = true,
    this.suffixIcon,
    this.focusNode,
    this.fillColor,
    this.borderColor,
    this.borderRadius = 12,
  });

  final TextEditingController? controller;
  final TextInputType textInputType;
  final String? prefixIconPath;
  final Widget? prefixWidget;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool isPassword;
  final int maxLines;
  final String hintText;
  final bool enabled;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final Color? fillColor;
  final Color? borderColor;
  final double borderRadius;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscure = widget.isPassword;
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    final fillColor = widget.fillColor ?? AppColors.colorWhite;
    final borderColor =
        widget.borderColor ?? AppColors.colorSlateGray.withValues(alpha: .3);

    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          isFocused = hasFocus;
        });
      },
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: const TextStyle(
          color: AppColors.colorDarkCharcoal,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: AppColors.colorMalachiteGreen,
        validator: widget.validator,
        obscureText: isObscure,
        controller: widget.controller,
        onChanged: widget.onChanged,
        keyboardType: widget.textInputType,
        maxLines: widget.maxLines,
        enabled: widget.enabled,
        focusNode: widget.focusNode,
        onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
        decoration: InputDecoration(
          errorMaxLines: 2,
          filled: true,
          fillColor: fillColor,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          prefixIcon:
              widget.prefixWidget ??
              (widget.prefixIconPath != null
                  ? Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        widget.prefixIconPath!,
                        width: 20,
                        height: 20,
                        fit: BoxFit.scaleDown,
                      ),
                    )
                  : null),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AppColors.colorSlateGray.withValues(alpha: 0.5),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon:
              widget.suffixIcon ??
              (widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                        color: AppColors.colorSlateGray,
                      ),
                    )
                  : null),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: borderColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: borderColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: AppColors.colorMalachiteGreen,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: AppColors.colorSlateGray.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: AppColors.colorRed, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: AppColors.colorRed, width: 2),
          ),
        ),
      ),
    );
  }
}
