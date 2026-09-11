import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavButton extends StatefulWidget {
  const FavButton({super.key});

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
 bool isFav = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isFav = !isFav;
        setState(() {});
      },
      child: SvgPicture.asset(
        isFav ? Assets.assetsImagesActiveFav : Assets.assetsImagesUnFav,
        width: 20,
        height: 20,
      ),
    );
  }
}
