import 'package:e_com/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_com/common/widgets/custom_shapes/containers/search_container.dart';

import 'package:e_com/common/widgets/texts/section_heading.dart';

import 'package:e_com/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_com/features/shop/screens/home/widgets/home_categories.dart';

import 'package:e_com/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              // blue part
              child: Column(
                children: [
                  //appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  //search bar
                  TSearchContainer(
                    text: "Search for products",
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Categories',
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
