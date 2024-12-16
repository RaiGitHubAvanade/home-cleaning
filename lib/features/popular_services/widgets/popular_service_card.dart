import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../common/common.dart';
import '../../../utils/utils.dart';
import '../../home/controllers/popular_services_carousel.controllers.dart';
import 'service_bookmark_bottom_sheet.dart';

class TPopularServiceCard extends StatelessWidget {
  const TPopularServiceCard({
    super.key,
    this.padding,
    this.onPressed,
    required this.item,
    this.showBorder = true,
    this.showIconButton = true,
  });

  final ServiceModel item;
  final Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final bool showBorder, showIconButton;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final controller = PopularServicesCarouselController.instance;
    return TRoundedContainer(
      height: TSizes.size135,
      radius: TSizes.borderRadiusLg,
      backgroundColor: TColors.white,
      showBorder: showBorder,
      padding: padding ?? const EdgeInsets.all(TSizes.size10),
      child: InkWell(
        onTap: () => controller.openServiceDetails(item),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container
            TRoundedContainer(
              width: 110,
              imageUrl: item.thumbnail,
              radius: TSizes.borderRadiusLg,
              backgroundColor: TColors.lightSilver,
              padding: const EdgeInsets.all(TSizes.defaultSpace / 2),
            ),

            const SizedBox(width: TSizes.defaultSpace / 2),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Service
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Offer
                        TRoundedContainer(
                          radius: TSizes.borderRadiusLg / 2,
                          backgroundColor: TColors.whiteSmoke,
                          padding: const EdgeInsets.symmetric(
                              vertical: TSizes.xs, horizontal: TSizes.sm),
                          child: Text(
                            item.category,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.labelSmall!.copyWith(
                                color: TColors.green,
                                fontWeight: FontWeight.w400),
                          ),
                        ),

                        const SizedBox(height: TSizes.xs),

                        // Title
                        Text(
                          item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodyLarge!.copyWith(fontSize: 15),
                        ),

                        const SizedBox(height: TSizes.xs),

                        // Icon - Name
                        Row(
                          children: [
                            // Icon Profile
                            const Icon(IconsaxPlusBold.profile,
                                color: TColors.green, size: 20),

                            const SizedBox(width: TSizes.xs / 2),

                            // Profile name
                            Text(
                              item.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.labelLarge!
                                  .apply(color: TColors.darkerGrey),
                            )
                          ],
                        ),

                        const SizedBox(height: TSizes.xs),

                        // Cost
                        CustomMoneyDisplay(amount: item.price),
                      ],
                    ),
                  ),

                  // Bookmark Button
                  if (showIconButton)
                    ServiceShowBookmarkBottomSheet(
                        item: item, onPressed: onPressed),
                  // Title - Icon - Name - Cost
                ],
              ),
            )

            // Title
          ],
        ),
      ),
    );
  }
}
