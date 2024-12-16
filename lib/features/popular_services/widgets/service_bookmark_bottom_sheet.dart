import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/common.dart';
import '../../../utils/utils.dart';
import 'popular_service_card.dart';

class ServiceShowBookmarkBottomSheet extends StatelessWidget {
  const ServiceShowBookmarkBottomSheet({
    super.key,
    this.onPressed,
    required this.item,
  });

  final ServiceModel item;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(item.isBookmark ? AppIcons.bookmark : AppIcons.linearBookmark,
          color: TColors.green),
      iconSize: TSizes.iconMd,
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            final textTheme = Theme.of(context).textTheme;
            return SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: TSizes.defaultSpace,
                    vertical: TSizes.size16,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      // Remove Favorites text
                      Text(
                        item.isBookmark
                            ? TTexts.removeFavorites
                            : TTexts.addFavorites,
                        style: textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      // Divider
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const Divider(),
                      const SizedBox(height: TSizes.size6),

                      // Popular Service Card
                      TPopularServiceCard(
                        item: item,
                        showBorder: false,
                        showIconButton: false,
                        padding:
                            const EdgeInsets.symmetric(vertical: TSizes.size10),
                      ),

                      // Button - Cancel - Remove
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: FilledButton(
                              onPressed: Get.back,
                              style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(TColors.whiteSmoke),
                              ),
                              child: const Text(
                                TTexts.cancel,
                                style: TextStyle(color: TColors.green),
                              ),
                            ),
                          ),
                          const SizedBox(width: TSizes.size10),
                          Expanded(
                            child: FilledButton(
                              onPressed: onPressed,
                              child: Text(
                                item.isBookmark
                                    ? TTexts.yesRemove
                                    : TTexts.yesAdd,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
