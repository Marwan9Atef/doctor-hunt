import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _hasText = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _clearText() {
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      controller: _controller,
      style: const TextStyle(
        color: AppColors.colorDarkCharcoal,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      cursorColor: AppColors.colorMalachiteGreen,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.colorWhite,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            Assets.assetsImagesSearch,
            width: 20,
            height: 20,
            fit: BoxFit.scaleDown,
            colorFilter: const ColorFilter.mode(
              AppColors.colorSlateGray,
              BlendMode.srcIn,
            ),
          ),
        ),
        hintText: 'Search...',
        hintStyle: TextStyle(
          color: AppColors.colorSlateGray.withValues(alpha: 0.5),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: _hasText
            ? IconButton(
                onPressed: _clearText,
                icon: SvgPicture.asset(
                  Assets.assetsImagesClose,
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                  colorFilter: const ColorFilter.mode(
                    AppColors.colorSlateGray,
                    BlendMode.srcIn,
                  ),
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: AppColors.colorSlateGray.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: AppColors.colorSlateGray.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: AppColors.colorMalachiteGreen,
            width: 2,
          ),
        ),
      ),
    );
  }
}
