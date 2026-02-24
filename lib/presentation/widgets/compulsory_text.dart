import 'package:flutter/material.dart';

class CompulsoryText extends StatelessWidget {
  const CompulsoryText(
    this.text, {
    this.textStyle,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    super.key,
  });

  final String text;
  final TextStyle? textStyle;
  final int maxLines;
  final TextOverflow overflow;

  @override
  Widget build(final BuildContext context) {
    return RichText(
      maxLines: maxLines,
      overflow: overflow,
      text: TextSpan(
        style: textStyle ?? TextStyle(color: Colors.grey),
        children: [
          TextSpan(text: text),
          TextSpan(
            text: '*',
            style: textStyle == null
                ? TextStyle(fontSize: 14, color: Colors.red)
                : textStyle!.copyWith(fontSize: 14, color: Colors.red),
          ),
        ],
      ),
    );
    // return Row(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     Text(text, style: textStyle ?? TextView.appTextStyle()),
    //     Text('*',
    //         style: textStyle == null
    //             ? TextView.appTextStyle(fontSize: 14, textColor: Colors.red)
    //             : textStyle!.copyWith(fontSize: 14, color: Colors.red))
    //   ],
    // );
    // return Text.rich(
    //
    //   // overflow: TextOverflow.ellipsis,
    //    TextSpan(children: [
    //     TextSpan(
    //         text: text,
    //         style: textStyle != null && textStyle!.color != null
    //             ? textStyle
    //             : TextStyle(fontSize: 14,color: Colors.grey[700])),
    //     TextSpan(
    //         text: "*",
    //         style: textStyle == null
    //             ? const TextStyle(fontSize: 14,color: Colors.red)
    //             : textStyle!.copyWith(fontSize: 14,color: Colors.red))
    //   ]),
    // );
  }
}
