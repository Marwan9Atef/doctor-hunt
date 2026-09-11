import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BookCardList extends StatelessWidget {
  const BookCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>BookCard(),
      itemCount: 8,
      separatorBuilder: (context, index) => const SizedBox(height: 10,),


    );
  }
}