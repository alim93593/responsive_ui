import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task1_responsive/presentation/widget/build_icon_ui.dart';
import 'package:task1_responsive/presentation/widget/main_image_ui.dart';

class LandScapeWidget extends StatelessWidget {
  const LandScapeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: CarouselSlider(
                  items:  [
                    ImageUi(image: 'assets/images/1.jpg'),
                    ImageUi(image: 'assets/images/3.jpg'),
                    ImageUi(image: 'assets/images/4.jpg'),
                  ],
                  options: CarouselOptions(
                    height: 170.0,
                    initialPage: 0,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  BuildIconUi(iconData:Icons.perm_identity_sharp,textName: 'ولي الامر', ),
                  BuildIconUi(iconData:Icons.email_outlined,textName: 'طلبات المقابله', ),
                  BuildIconUi(iconData:Icons.recent_actors,textName: 'طلب التوظيف', ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  BuildIconUi(iconData:Icons.article,textName: 'نماذج', ),
                  BuildIconUi(iconData:Icons.wifi_tethering,textName: 'روابط عامة', ),
                  BuildIconUi(iconData:Icons.event_note_outlined,textName: 'النتيجة', ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              CircleAvatar(
                radius: 55,
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.add_ic_call,
                          size: 50,
                          color: Colors.blue,
                        ),
                        Text(
                          'تواصل معانا',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
              ),

            ],
          ),
        ),

      ],
    );
  }
}
