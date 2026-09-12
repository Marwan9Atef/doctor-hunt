import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/core/widgets/custom_search_bar.dart';
import 'package:doctor_hunt/core/widgets/image_profile.dart';
import 'package:doctor_hunt/feature/admin/home/presentation/widgets/admin_info_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [

              Text(t.home.adminTitle,style: AppStyles.styleBold18(),),
              const Spacer(),
              SvgPicture.asset(Assets.assetsImagesNotifaction,width: 20,height: 20,),
              const SizedBox(width: 13,),
              const ImageProfile()

            ],
          ),
          const SizedBox(height: 20,),
          const AdminInfoList(),
           const SizedBox(height: 8,),
           const CustomSearchBar(radius: 12,),
          
          
          
        ],
      ),
    );
  }
}