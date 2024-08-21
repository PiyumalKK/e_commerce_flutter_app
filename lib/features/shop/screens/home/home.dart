import 'package:e_com/common/widgets/appbar/appbar.dart';
import 'package:e_com/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_com/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_com/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/text_strings.dart';

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
                //appbar
                children: [THomeAppBar()],
                //search bar
                //categories
              ),
            )
          ],
        ),
      ),
    );
  }
}
