import 'package:flutter/cupertino.dart';

/**
 * 走马灯
 */
class CarouselPage extends StatefulWidget {

  final List<Widget> children;

  const CarouselPage({super.key, required this.children});

  @override
  State<StatefulWidget> createState() {
    return _CarouselPageState();
  }
}

class _CarouselPageState extends State<CarouselPage> {

  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: widget.children,
    );
  }

}
