import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/theme_helper.dart';

class CustomTextBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double height;
  final double width;
  final Widget? child;
  final double radius;
  final String title;
  final bool showBorder;

  const CustomTextBtn({
    Key? key,
    this.width = double.infinity,
    this.height = 53,
    this.onPressed,
    this.backgroundColor = ThemeHelper.primaryColor,
    this.foregroundColor = Colors.white,
    this.child,
    this.radius = 8,
    this.title = '',
    this.showBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: showBorder ? BorderSide.none : const BorderSide(),
        ),
      ),
      child: child ??
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
    );
  }
}

class CustomBackButton extends StatelessWidget {

  final void Function() onTap;

  const CustomBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5.5),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xFFE8ECF4),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          CupertinoIcons.chevron_back,
          size: 18.5,
          color: Colors.black,
        ),
      ),
    );
  }
}

class CustomSocialBtn extends StatelessWidget {
  final String image;
  final void Function()? onTap;

  const CustomSocialBtn({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 45,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(width: 1, color: Color(0xFFE8ECF4)),
            ),
          ),
          child: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
