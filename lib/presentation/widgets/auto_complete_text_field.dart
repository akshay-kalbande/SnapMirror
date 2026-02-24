import 'dart:async';

import 'package:flutter/material.dart';
import 'app_error_messages.dart';
import 'compulsory_text.dart';
import 'disabled.dart';

class AutoCompleteTextField<T extends Object> extends StatelessWidget {
  final List<T> values;

  ///Default action. Set value of variable you assigned to store the selection.
  final void Function(T) onSelected;

  ///If null passed, will use toString() by default.
  final String Function(T)? displayStringForOption;

  final TextEditingValue? initialValue;

  ///Use in custom cases. Not usually needed.
  final Widget Function(
    BuildContext context,
    AutocompleteOnSelected<T> onSelected,
    Iterable<T> options,
  )?
  optionsViewBuilder;

  final double? optionsMaxHeight;

  ///Use in custom cases. Default one used is:
  ///
  /// (textEditingValue) {
  ///
  /// if (textEditingValue.text == '') {
  ///     return Iterable<T>.empty();
  ///   }
  ///
  ///   return options.where((T option) {
  ///     return toSearchable(option)
  ///       .toLowerCase()
  ///       .contains(textEditingValue.text.toLowerCase());
  ///   });
  ///
  /// }
  final FutureOr<Iterable<T>> Function(TextEditingValue textEditingValue)?
  optionsBuilder;

  final String fieldDisplayName;

  final bool readOnly;

  final bool requiredInput;

  ///Fixed format: Set the variable you assigned to store this field's value to null (or empty string or whatever).
  final void Function() resetVariableValue;

  ///Fixed format: If the variable you assigned to store this field's value is null (or empty), return a String. Else, return null.
  final String? Function() isVariableAssignedValidator;

  ///Used in generating iterable of results. Set it to toString() if not a particular case.
  late final String Function(T) toSearchable;

  final GlobalKey<FormFieldState> fieldKey = GlobalKey<FormFieldState>();

  AutoCompleteTextField({
    super.key,
    required this.values,
    required this.fieldDisplayName,
    required this.onSelected,
    this.displayStringForOption,
    this.initialValue,
    this.optionsViewBuilder,
    this.optionsMaxHeight,
    this.optionsBuilder,
    this.readOnly = false,
    required this.requiredInput,
    required this.resetVariableValue,
    required this.isVariableAssignedValidator,
    final String Function(T)? toSearchable,
  }) {
    if (toSearchable == null) {
      this.toSearchable = (final value) => value.toString();
    } else {
      this.toSearchable = toSearchable;
    }
  }

  @override
  Widget build(final BuildContext context) {
    final Widget child = Autocomplete<T>(
      key: key,
      optionsMaxHeight: optionsMaxHeight ?? 200,
      //200 is default value used by builder, this was not hardcoded by me.
      displayStringForOption:
          displayStringForOption ?? RawAutocomplete.defaultStringForOption,
      initialValue: initialValue,
      optionsViewBuilder: optionsViewBuilder,
      optionsBuilder:
          optionsBuilder ??
          (final textEditingValue) {
            if (textEditingValue.text == '') {
              return Iterable<T>.empty();
            }
            return values.where(
              (final T option) => toSearchable(
                option,
              ).toLowerCase().contains(textEditingValue.text.toLowerCase()),
            );
          },
      onSelected: (final value) {
        onSelected(value);
        fieldKey.currentState?.validate();
      },
      fieldViewBuilder:
          (
            final BuildContext context,
            final TextEditingController textEditingController,
            final FocusNode focusNode,
            final void Function() onFieldSubmitted,
          ) {
            return TextFormField(
              key: fieldKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                label: requiredInput
                    ? CompulsoryText(fieldDisplayName)
                    : Text(fieldDisplayName),
              ),
              onChanged: (final _) => resetVariableValue(),
              controller: textEditingController,
              onFieldSubmitted: (final _) => onFieldSubmitted,
              focusNode: focusNode,
              validator: (final value) {
                if (value == null || value.isEmpty) {
                  return AppErrorMessages.cannotBeEmpty(fieldDisplayName);
                }
                return isVariableAssignedValidator();
              },
            );
          },
    );
    if (readOnly) {
      return Disabled(child);
    }
    return Focus(
      onFocusChange: (final bool hasFocus) {
        if (!hasFocus) {
          fieldKey.currentState?.validate();
        }
      },
      child: child,
    );
  }
}
