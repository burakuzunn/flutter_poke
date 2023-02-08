import 'package:flutter/material.dart';
import 'package:flutter_poke/model/constants.dart';
import 'package:flutter_poke/model/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AppTitle extends StatelessWidget {
  String pokeBallImageUrl = Constantes.pokeBallImageUrl;

  AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: UIHelper.getAppTtitleWidgetHeigh(),
        child: Stack(
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Constantes.title,
                    style: Constantes.getTitleTextStyle(),
                  )),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                pokeBallImageUrl,
                width: 150.w,
                height: ScreenUtil().orientation == Orientation.portrait
                    ? 0.2.sh
                    : 0.2.sw,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
