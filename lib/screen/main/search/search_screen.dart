import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/screen/main/home/widget/category.dart';
import 'package:pet_app/screen/main/home/widget/category_filter_button.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'recent_search.dart';
import 'search_result.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search';

  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  Category _selectedCategory = Category.food;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Search'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextInputField(
              controller: _searchController,
              hintText: 'Search your product',
              prefixIcon: const Icon(IconlyLight.search, color: CustomColor.hintColor),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 47,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemCount: Category.values.length,
              itemBuilder: (ctx, index) {
                Category type = Category.values[index];

                return Padding(
                  padding: EdgeInsets.only(right: index == Category.values.length - 1 ? 0 : 12),
                  child: CategoryFilterButton(
                    type: type,
                    isSelected: _selectedCategory == type,
                    onPressed: () {
                      setState(() {
                        if (_selectedCategory != type) {
                          _selectedCategory = type;
                        }
                      });
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          SectionText(section: _searchController.text.isEmpty ? 'Recent' : 'Search results'),
          const SizedBox(height: 10),
          _searchController.text.isEmpty ? const RecentSearch() : const SearchResult(),
        ],
      ),
    );
  }
}
