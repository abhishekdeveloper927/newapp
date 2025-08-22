import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField2 extends StatelessWidget {
  final String? title;
  final String subTitle;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? marginRight;
  final double? marginBottom;
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final bool obscure;
  final Color? backgroundColor;
  final int? maxLine;

  const InputField2(
      {Key? key,
      this.title,
      required this.controller,
      this.suffixIcon,
      this.focusNode,
      this.nextFocus,
      this.keyboardType,
      this.marginRight,
      this.marginBottom,
      this.width,
      this.color,
      this.maxLine,
      this.radius,
      this.height,
      this.prefixIcon,
      this.backgroundColor,
      required this.subTitle,
      this.obscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Text(
                title!,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )
            : const SizedBox(),
        SizedBox(
          height: title != null ? 14 : 0,
        ),
        Container(
          margin: EdgeInsets.only(
              right: marginRight ?? 0, bottom: marginBottom ?? 0),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          width: width ?? Get.width,
          height: height ?? 50,
          decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
              borderRadius: BorderRadius.circular(radius ?? 16)),
          child: TextFormField(
            obscureText: obscure,
            maxLines: maxLine,
            controller: controller,
            onFieldSubmitted: (_) {},
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
                prefixIcon: prefixIcon,
                border: InputBorder.none,
                suffixIcon: suffixIcon,
                hintText: subTitle,
                hintStyle:
                    TextStyle(fontSize: 14, color: color ?? Colors.black26)),
          ),
        ),
      ],
    );
  }
}
