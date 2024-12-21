import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/widgets/functions.dart';

Widget getRadioType(
  void Function() onTap1,
  void Function() onTap2,
  bool isPressed1,
  bool isPressed2,
  BuildContext context,
) {
  return Row(
    children: [
      Expanded(
        child: InkWell(
          onTap: onTap1,
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: getMediaQueryHeight(0.01, context)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isPressed1 == true
                  ? const Color(0xFFE2BE7F)
                  : const Color.fromRGBO(32, 32, 32, 0.7),
            ),
            child: Text(
              'Radio',
              style: TextStyle(
                fontFamily: 'jannalt',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: isPressed1 ? Colors.black : Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      Expanded(
        child: InkWell(
          onTap: onTap2,
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: getMediaQueryHeight(0.01, context)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isPressed2 == false
                  ? const Color.fromRGBO(32, 32, 32, 0.7)
                  : const Color(0xFFE2BE7F),
            ),
            child: Text(
              'Reciters',
              style: TextStyle(
                fontFamily: 'jannalt',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: isPressed2 == false ? Colors.white : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget getRadio(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        padding: EdgeInsets.all(
          15,
        ),
        height: getMediaQueryHeight(0.15, context),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFE2BE7F),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Text(
          'Reciters',
          style: TextStyle(
            fontFamily: 'jannalt',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Image.asset('assets/mosque.png'),
      ),
      Positioned(
        bottom: getMediaQueryHeight(0.02, context),
        child: Padding(
          padding: EdgeInsets.only(left: getMediaQueryWidth(0.14, context)),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/start.svg',
              ),
              SizedBox(
                width: getMediaQueryWidth(0.05, context),
              ),
              SvgPicture.asset(
                'assets/sound.svg',
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
