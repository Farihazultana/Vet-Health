import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  int activeIndex = 0;
  final assetImages = [
    'assets/images/addsBanner/Acmetil_Vet_Ads_Matter.jpg',
    'assets/images/addsBanner/Corporate_Vet_Add_for_Apps_23_001.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CarouselSlider.builder(
            itemCount: assetImages.length,
            itemBuilder: (context, index, realIndex) {
              final assetImage = assetImages[index];
              return buildImage(assetImage, index);
            },
            options: CarouselOptions(
              height: 180,
              autoPlay: true,
              enlargeCenterPage: false,
              viewportFraction: 1,
              reverse: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlayInterval: const Duration(seconds: 2),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Positioned(
          left: 155,
          bottom: 10,
          child: buildIndicator(),
        ),
      ],
    );
  }

  Widget buildImage(String assetImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        width: double.infinity,
        child: Image.asset(
          assetImage,
          fit: BoxFit.fill,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: assetImages.length,
        effect: const ScrollingDotsEffect(
            dotWidth: 10.0,
            dotHeight: 10.0,
            dotColor: Color.fromARGB(255, 47, 109, 216),
            activeDotColor: Color.fromARGB(255, 4, 101, 150)),
      );
}
