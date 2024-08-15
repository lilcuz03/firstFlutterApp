import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/icons/app_Icons.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/regular_text.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.85,
      padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Row(
              children: [
                AppIcons.search,
                RegularText(text: 'Search')
              ],
            ),
          
    );
  }
}