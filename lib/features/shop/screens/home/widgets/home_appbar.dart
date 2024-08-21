import 'package:e_com/common/widgets/appbar/appbar.dart';
import 'package:e_com/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      // icon button
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        ),
      ],
    );
  }
}
