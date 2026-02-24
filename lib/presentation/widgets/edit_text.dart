import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/theme/app_colors.dart';
import 'compulsory_text.dart';

class EditText extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? textColor;
  final String? labelText;
  final TextStyle? labelStyle;
  final Widget? label;
  final String? hint;
  late final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final bool autoCorrect;
  final bool obscureText;
  final int? minLength;
  final int? maxLength;
  final bool showCounter;
  final double? cursorHeight;
  final double cursorWidth;
  final Color? cursorColor;
  final Iterable<String>? autofillHints;
  final bool? filled;
  final Color fillColor;
  late final bool showRectangularInputBorder;
  final bool showBorder;
  final double borderRadius;
  late final BorderSide? widgetBorderSide;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isDense;
  final bool alignLabelWithHint;
  final FormFieldValidator<String>? validator;
  final int? minLines;
  final int? maxLines;
  final bool readOnly;
  final bool enable;
  final bool enableSuggestions;
  final bool enableInteractiveSelection;
  final TextAlign textAlign;
  final TextInputAction? inputAction;
  final Function(String?)? onSaved;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final VoidCallback? onEditingComplete;
  final EdgeInsets scrollPadding;
  final bool autoFocus;
  final bool requiredInput;

  EditText({
    super.key,
    this.controller,
    this.focusNode,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.textColor,
    this.labelText,
    this.labelStyle,
    this.label,
    this.hint,
    TextStyle? hintTextStyle,
    this.errorStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.autoCorrect = true,
    this.obscureText = false,
    this.maxLength,
    this.showCounter = false,
    this.cursorHeight,
    this.cursorWidth = 2.0,
    this.cursorColor,
    this.autofillHints,
    this.filled,
    this.fillColor = Colors.white,
    bool showRectangleInputBorder = false,
    this.showBorder = true,
    this.borderRadius = 10.0,
    BorderSide? borderSide,
    this.contentPadding,
    this.isDense,
    this.alignLabelWithHint = true,
    this.validator,
    this.minLines,
    this.maxLines,
    this.readOnly = false,
    this.enable = true,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.textAlign = TextAlign.start,
    this.inputAction,
    this.onSaved,
    this.onFieldSubmitted,
    this.onChanged,
    this.onEditingComplete,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.autoFocus = false,
    this.requiredInput = false,
    this.minLength,
  }) {
    borderSide ??= BorderSide(color: AppColors.secondaryColor);
    if (!showBorder) {
      borderSide = BorderSide.none;
      showRectangleInputBorder = true;
    }
    showRectangularInputBorder = showRectangleInputBorder;
    widgetBorderSide = borderSide;

    hintTextStyle ??= TextStyle(
      color: AppColors.secondaryColor,
      fontSize: 14,
      fontStyle: FontStyle.italic,
    );
    hintStyle = hintTextStyle;
  }

  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      key: key,
      controller: controller,
      keyboardType: inputType,
      focusNode: focusNode,
      autofocus: autoFocus,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      autocorrect: autoCorrect,
      obscureText: obscureText,
      maxLength: maxLength,
      cursorHeight: cursorHeight,
      cursorWidth: cursorWidth,
      cursorColor: cursorColor,
      autofillHints: autofillHints,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: hintStyle,
        labelText: requiredInput ? null : labelText,
        labelStyle: labelStyle,
        label:
            label ??
            ((requiredInput && labelText != null)
                ? CompulsoryText(labelText!)
                : null),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        fillColor: fillColor,
        border: showRectangularInputBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                borderSide: widgetBorderSide!,
              )
            : UnderlineInputBorder(borderSide: widgetBorderSide!),
        enabledBorder: showRectangularInputBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                borderSide: widgetBorderSide!,
              )
            : UnderlineInputBorder(borderSide: widgetBorderSide!),
        disabledBorder: showRectangularInputBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                borderSide: widgetBorderSide!,
              )
            : UnderlineInputBorder(borderSide: widgetBorderSide!),
        focusedBorder: showRectangularInputBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                borderSide: widgetBorderSide!,
              )
            : UnderlineInputBorder(borderSide: widgetBorderSide!),
        errorStyle: errorStyle,
        contentPadding: contentPadding,
        alignLabelWithHint: alignLabelWithHint,
        isDense: isDense,
        counter: showCounter ? null : const SizedBox.shrink(),
        errorMaxLines: 2,
      ),
      minLines: minLines,
      maxLines: obscureText ? 1 : maxLines,
      readOnly: readOnly,
      enabled: enable,
      enableSuggestions: enableSuggestions,
      enableInteractiveSelection: enableInteractiveSelection,
      textAlign: textAlign,
      textInputAction: inputAction,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      scrollPadding: scrollPadding,
      validator: readOnly
          ? null
          : (final String? value) {
              if (requiredInput && (value == null || value.isEmpty)) {
                return '$labelText cannot be empty.';
              }
              if (minLength != null &&
                  (value ?? '').isNotEmpty &&
                  value!.length < minLength!) {
                return '$labelText must be at least $minLength characters.';
              }
              if (maxLength != null &&
                  (value ?? '').isNotEmpty &&
                  value!.length > maxLength!) {
                return '$labelText must be at most $maxLength characters.';
              }
              if (validator != null) {
                //this condition will never be met if we are allowing user to input own validator. keeping in case we change our mind
                return validator!(value);
              }
              return null;
            },
    );
  }
}
