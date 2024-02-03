import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/models/home_banner_model/home_banner_model.dart';

class HomeBanner extends StatefulWidget {
  final HomeBannerModel? data;
  const HomeBanner({super.key, this.data});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ClipRRect(
        borderRadius: 18.radius,
        child: SizedBox(
          width: double.infinity,
          height: 134,
          child: Swiper(
            loop: true,
            autoplay: true,
            itemBuilder: (context, index) {
              return CustomImage(
                url: widget.data?.data?[index].rotationChart ?? "",
                fit: BoxFit.fitWidth,
              );
            },
            itemCount: widget.data?.data?.length ?? 0,
          ),
        ),
      ),
    );
  }
}
