import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_book_list_view.dart';

class FeaturedBooksListViewBlockConsumer extends StatefulWidget {
  const FeaturedBooksListViewBlockConsumer({
    super.key,
  });

  @override
  State<FeaturedBooksListViewBlockConsumer> createState() =>
      _FeaturedBooksListViewBlockConsumerState();
}

class _FeaturedBooksListViewBlockConsumerState
    extends State<FeaturedBooksListViewBlockConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }

        if (state is FeaturedBooksPagenationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              state.errorMessage,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            duration: const Duration(seconds: 3),
          ));
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPagenationLoading ||
            state is FeaturedBooksPagenationFailure) {
          return FeaturedBooksListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
