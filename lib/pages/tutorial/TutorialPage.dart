import 'package:flutter/material.dart';
import 'package:yuni/pages/carousel/pagesimple.dart';

class TutorialPage extends StatefulWidget {
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
            // PageView(
            //   controller: _controller,
            //   children: [SimplePage(text: 'page1'), SimplePage(text: 'page2')],
            // ),
            Container(
              height: 600,
              width: double.infinity,
              child: PageView(
                controller: _controller,
                reverse: false,
                children: const [
                  SimplePage(text: 'page1'),
                  SimplePage(text: 'page2')
                ],
              ),
            ),
            MaterialButton(
                color: Colors.amber,
                child: const Text("下一步"),
                onPressed: () {
                  _currentIndex++;
                  setState(() {});
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                })
          ],
        ));
  }
}
