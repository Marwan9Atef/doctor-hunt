import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/widgets/custom_search_bar.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/book_card_list.dart';
import 'package:flutter/material.dart';

class PatientBookScreen extends StatelessWidget {
  const PatientBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.book.bookTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 20),
        child: Column(
          children: [
         const CustomSearchBar(),
            const SizedBox(height: 24,),
            const Expanded(child: BookCardList())
            
          ],
        ),
      ),
    );
  }
}
