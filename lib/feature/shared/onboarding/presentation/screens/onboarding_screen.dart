import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/feature/shared/onboarding/data/models/onboarding_model.dart';
import 'package:doctor_hunt/feature/shared/onboarding/presentation/widgets/onboarding_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final onboardingContent = OnboardingModel.getOnboardingContent(context);

    return Scaffold(
      body: PageView.builder(
        itemCount: onboardingContent.length,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        controller: _pageController,
        itemBuilder: (context, index) => OnboardingViewItem(
          onNext: _onNext,
          onSkip: _onSkip,
          onboardingContent: onboardingContent[index],
          isLastPage: index == onboardingContent.length - 1,
        ),
      ),
    );
  }

  void _onNext() {
    final onboardingContent = OnboardingModel.getOnboardingContent(context);
    if (_currentPageIndex < onboardingContent.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go(SetRuleRoute().location);
    }
  }

  void _onSkip() {
    context.go(SetRuleRoute().location);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
