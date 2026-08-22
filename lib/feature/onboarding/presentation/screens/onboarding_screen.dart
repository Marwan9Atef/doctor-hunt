import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/feature/onboarding/data/models/onboarding_model.dart';
import 'package:doctor_hunt/feature/onboarding/presentation/view/onboarding_view.dart';
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
    return Scaffold(
      body: PageView.builder(
        itemCount: OnboardingModel.onboardingContent.length,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        controller: _pageController,
        itemBuilder: (context, index) => OnboardingView(
          onNext: _onNext,
          onSkip: _onSkip,
          onboardingContent: OnboardingModel.onboardingContent[index],
          isLastPage: index == OnboardingModel.onboardingContent.length - 1,
        ),
      ),
    );
  }

  void _onNext() {
    if (_currentPageIndex < OnboardingModel.onboardingContent.length - 1) {
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
