import 'package:doctor_hunt/feature/auth/data/models/rule_model.dart';
import 'package:doctor_hunt/feature/auth/presentation/widgets/rule_card.dart';
import 'package:flutter/material.dart';

class RuleCards extends StatefulWidget {
  const RuleCards({super.key});

  @override
  State<RuleCards> createState() => _RuleCardsState();
}

class _RuleCardsState extends State<RuleCards> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        RuleModel.rules.length,
        (index) => GestureDetector(
          onTap: () {
            if (currentIndex == index) return;
            currentIndex = index;
            setState(() {
              
            });
          },
          child: RuleCard(
            ruleContent: RuleModel.rules[index],
            isSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
