import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();

    return Container(
        width: double.infinity,
        height: double.infinity,
        // padding: EdgeInsets.only(left: 50, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/logo.svg',
            ),
            const Text(
              '与你',
              style: TextStyle(
                  fontSize: 29.56,
                  // fontFamily: '',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1272DC)),
              textAlign: TextAlign.center,
            ),
            const Text(
              '陪伴，记录，与你在一起',
              style: TextStyle(
                  fontSize: 11.28,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.08,
                  color: Color(0xFF1272DC)),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
