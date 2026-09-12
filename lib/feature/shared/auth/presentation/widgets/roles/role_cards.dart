import 'package:doctor_hunt/feature/shared/auth/data/models/rule_model.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/widgets/roles/role_card.dart';
import 'package:flutter/material.dart';

class RoleCards extends StatefulWidget {
  final List<RuleModel> rules;
  const RoleCards({super.key, required this.rules});

  @override
  State<RoleCards> createState() => _RoleCardsState();
}

class _RoleCardsState extends State<RoleCards> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.rules.length,
        (index) => GestureDetector(
          onTap: () {
            if (currentIndex == index) return;
            currentIndex = index;
            setState(() {});
          },
          child: RoleCard(
            ruleContent: widget.rules[index],
            isSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
