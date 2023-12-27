import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yuni/pages/carousel/pagesimple.dart';

class StepInfo {
  final String imgSrc;
  final String title;
  final String text;

  StepInfo(this.imgSrc, this.title, this.text);
}

class TutorialPage extends StatefulWidget {
  final List<StepInfo> info;

  const TutorialPage(this.info, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _TutorialPageState();
  }
}

class _TutorialPageState extends State<TutorialPage> {
  int _currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 600,
                width: double.infinity,
                child: PageView.builder(
                    itemBuilder: (BuildContext context, int itemIndex) {
                  return Column(
                    children: [
                      const SizedBox(height: 100), // placeholder
                      Image.asset(widget.info[itemIndex].imgSrc,
                          width: 300, height: 300),
                      SizedBox(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Text(widget.info[itemIndex].title,
                                style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF0B69DA),
                                    letterSpacing: 0.17),
                                textAlign: TextAlign.center),
                            Text(
                              widget.info[itemIndex].text,
                              style: const TextStyle(
                                  color: Color(0xFF838F9E),
                                  fontSize: 14,
                                  letterSpacing: 0.1),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                })),
            MaterialButton(
                color: const Color(0xFF3BA2E4),
                minWidth: 340,
                height: 56,
                onPressed: () {
                  if (_currentIndex != widget.info.length - 1) {
                    _currentIndex++;
                    setState(() {});
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  }
                },
                child: const Text(
                  "下一步",
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
                )),
            const SizedBox(height: 7,),
            const Text(
              '跳过',
              style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  letterSpacing: 0.1),
            )
          ],
        ));
  }
}
