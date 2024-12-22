import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/widget/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
