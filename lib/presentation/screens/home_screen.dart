import 'package:flutter/material.dart';
import 'package:task1_responsive/presentation/widget/build_land_scape_widget.dart';
import 'package:task1_responsive/presentation/widget/build_portrait_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).orientation;
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/app/app.png'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.white,
          BlendMode.color,
        ),
      )),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('الرئيسيه'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: media == Orientation.portrait
                ? const PortraitWidget()
                : const LandScapeWidget()),
      ),
    );
  }
}
