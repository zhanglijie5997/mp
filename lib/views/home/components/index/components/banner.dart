import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/num.ext.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

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
        child: Container(
            width: double.infinity,
            height: 134,
            child: Swiper(
              loop: true,autoplay: true,
              itemBuilder: (context, index){
                return const CustomImage(url: "https://cos.yanjie.art/platform/banner/1713810683965079552.jpg", fit: BoxFit.cover,);
              },
              itemCount: 3,
            ),
          ),
      ),
    );
  }
}
