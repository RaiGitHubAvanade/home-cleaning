import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../common/widgets/containers/rounded_container.dart';
import '../../../common/widgets/icons/t_circular_icon.dart';
import '../../../utils/utils.dart';

class ServiceDetailTabAbout extends StatelessWidget {
  const ServiceDetailTabAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  About Service
          Text(TTexts.aboutService, style: textTheme.bodyLarge),
          const SizedBox(height: TSizes.size8),

          //  Section - About Service Desc
          Text(
            TTexts.aboutServiceDesc,
            style: textTheme.bodyMedium!.apply(color: TColors.darkerGrey),
          ),
          const SizedBox(height: TSizes.defaultSpace),

          //  Service Provider
          Text(TTexts.serviceProvider, style: textTheme.bodyLarge),
          const SizedBox(height: TSizes.size8),

          //  Section - Service Provider
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Circle Avatar
                  const CircleAvatar(
                      radius: TSizes.size24,
                      backgroundColor: TColors.lightSilver),
                  const SizedBox(width: TSizes.size12),

                  // Name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jenny Wilson',
                          style: textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.w600)),
                      // Service Provider
                      Text(
                        TTexts.serviceProvider,
                        style: textTheme.labelLarge!
                            .apply(color: TColors.darkerGrey),
                      ),
                    ],
                  )
                ],
              ),

              // Circular Icon
              const Row(
                children: [
                  TCircularIcon(
                      icon: IconsaxPlusBold.message,
                      iconColor: TColors.green,
                      backgroundColor: TColors.whiteSmoke),
                  SizedBox(width: TSizes.spaceBtwItems),
                  TCircularIcon(
                      icon: IconsaxPlusBold.call,
                      iconColor: TColors.green,
                      backgroundColor: TColors.whiteSmoke),
                ],
              )
            ],
          ),

          const SizedBox(height: TSizes.defaultSpace),

          //  Section - Working Hours
          Text(TTexts.workingHours, style: textTheme.bodyLarge),
          const SizedBox(height: TSizes.size4),
          const Divider(color: TColors.dividerColor),
          const SizedBox(height: TSizes.size12),
          Column(
            children: [
              ...List.generate(
                  7,
                  (index) => Container(
                        padding: const EdgeInsets.only(bottom: TSizes.size12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Monday',
                              style: textTheme.bodyMedium!
                                  .apply(color: TColors.darkerGrey),
                            ),
                            const Text(
                              '00:00 - 00:00',
                            )
                          ],
                        ),
                      ))
            ],
          ),
          const SizedBox(height: TSizes.size12),

          // Section - Address

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(TTexts.address, style: textTheme.bodyLarge),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(TTexts.viewOnMap,
                    style: textTheme.bodyLarge!.apply(color: TColors.green)),
              )
            ],
          ),
          const SizedBox(height: TSizes.size4),
          const Divider(color: TColors.dividerColor),
          const SizedBox(height: TSizes.size4),

          /// Address Desc
          Row(
            children: [
              const Icon(IconsaxPlusLinear.location, size: TSizes.size18),
              const SizedBox(width: TSizes.size4),
              Text(
                TTexts.addressDesc,
                style: textTheme.bodyMedium!.apply(color: TColors.darkerGrey),
              )
            ],
          ),

          // Map
          const SizedBox(height: TSizes.size12),
          const TRoundedContainer(
            radius: TSizes.size12,
            width: double.infinity,
            height: TSizes.size200,
            imageUrl: TImages.serviceMap,
          ),
        ],
      ),
    );
  }
}
