import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lance_box/app.dart';


class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    this.icon,
    this.press,
  });

  final String? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin:
        EdgeInsets.symmetric(horizontal: context.dynamicScreenWidth(10)),
        padding: EdgeInsets.all(context.dynamicScreenWidth(12)),
        height: context.dynamicScreenHeight(50),
        width: context.dynamicScreenWidth(50),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}