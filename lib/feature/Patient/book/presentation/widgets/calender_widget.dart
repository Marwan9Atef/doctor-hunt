import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now().subtract(const Duration(days: 30)),
      lastDay: DateTime.now().add(const Duration(days: 60)),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      enabledDayPredicate: (day) {
        return day.isAfter(DateTime.now().subtract(const Duration(days: 1)));
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      calendarFormat: CalendarFormat.month,
      headerStyle: HeaderStyle(
        headerMargin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          color: AppColors.colorMalachiteGreen,
        ),
        formatButtonVisible: false,

        titleTextStyle: AppStyles.styleMedium18(color: AppColors.colorWhite),

        leftChevronIcon: Icon(Icons.chevron_left, color: AppColors.colorWhite),
        rightChevronIcon: Icon(
          Icons.chevron_right,
          color: AppColors.colorWhite,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: AppStyles.styleRegular14(color: AppColors.colorSlateGray),
        weekendStyle: AppStyles.styleRegular14(color: AppColors.colorSlateGray),
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: AppStyles.styleRegular15(color: AppColors.colorBlack),
        selectedTextStyle: AppStyles.styleRegular15(
          color: AppColors.colorWhite,
        ),
        todayTextStyle: AppStyles.styleRegular15(color: AppColors.colorBlack),
        weekendTextStyle: AppStyles.styleRegular15(color: AppColors.colorBlack),
        selectedDecoration: BoxDecoration(
          color: AppColors.colorMalachiteGreen,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: AppColors.colorLightGreen,
          shape: BoxShape.circle,
        ),
        markerDecoration: BoxDecoration(
          color: AppColors.colorMalachiteGreen,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
