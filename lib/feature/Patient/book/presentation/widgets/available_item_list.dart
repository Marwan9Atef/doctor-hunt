import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/available_item.dart';
import 'package:flutter/material.dart';

class AvailableItemList extends StatefulWidget {
  const AvailableItemList({super.key,required this.timeSlots});
  
  final List<Map<String, String>> timeSlots;

  @override
  State<AvailableItemList> createState() => _AvailableItemListState();
}

class _AvailableItemListState extends State<AvailableItemList> {
  int? selectedIndex;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount:widget.timeSlots.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
        itemBuilder: (context, index) {
          final slot = widget.timeSlots[index];
          return AvailableItem(
            title: slot['title']!,
            subTitle: slot['subtitle']!,
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
