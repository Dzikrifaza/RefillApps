import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:refill_apps/home/body.dart';
import 'package:refill_apps/read_page.dart';

import 'widget/btn.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Temukan Dengan Lokasi Terdekat',
              body: 'Temukan Refill Home di lokasi terdekat kamu.',
              image: buildImage('assets/images/map.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Pilih Sesukamu',
              body: 'Kamu dapat memilih liquid dengan sesukamu.',
              image: buildImage('assets/images/shopping.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Online Payment',
              body: 'Kamu dapat membayar pesanan menggunakan uang digital.',
              image: buildImage('assets/images/pay.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Order Online',
              body:
                  'Membuat pesanan hanya dengan menggunakan gadget anda untuk memudahkan pekerjaan rumah.',
              image: buildImage('assets/images/shopping.png'),
              decoration: getPageDecoration(),
              footer: ButtonWidget(
                text: 'Jelajahi Sekarang',
                onClicked: () => goToHome(context),
              ),
            ),
          ],
          done: Text('Lets Go', style: TextStyle(fontWeight: FontWeight.bold)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          next: Text('Next'),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Colors.orange,
          skipFlex: 0,
          nextFlex: 0,
          animationDuration: 500,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Body()),
      );

  Widget buildImage(String path) => Center(
        child: Image.asset(path, width: 350),
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
