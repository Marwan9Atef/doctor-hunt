import 'package:doctor_hunt/feature/admin/home/data/models/admin_info_model.dart';
import 'package:doctor_hunt/feature/admin/home/presentation/widgets/admin_info_item.dart';
import 'package:flutter/material.dart';

class AdminInfoList extends StatelessWidget {
  const AdminInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:List.generate(AdminInfoModel.adminInfo.length,(index) => Expanded(child: AdminInfoItem(adminInfo: AdminInfoModel.adminInfo[index] ,)), )
    );
  }
}