import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCarouselSlider extends StatefulWidget {
  MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  int activeIndex = 0;
  final urlImages = [
    'https://googleflutter.com/sample_image.jpg',
    'https://picsum.photos/200/300?grayscale',
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/seed/picsum/200/300'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                height: 180,
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                //pageSnapping: false,
                reverse: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: const Duration(seconds: 2),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              )),
        ),
        const SizedBox(
          height: 12,
        ),
        Positioned(
          left: 140,
          right: 0, 
          bottom: 10, 
          child: buildIndicator()),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        width: double.infinity,
        child: Image.network(
          urlImage,
          fit: BoxFit.fill,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: const ScrollingDotsEffect(
            dotWidth: 10.0,
            dotHeight: 10.0,
            //paintStyle: PaintingStyle.stroke,
            dotColor: Color.fromARGB(255, 47, 109, 216),
            activeDotColor: Color.fromARGB(255, 4, 101, 150)
        ),
      );
}