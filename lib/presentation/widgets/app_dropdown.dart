import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../core/theme/app_colors.dart';
import 'compulsory_text.dart';
import 'disabled.dart';

enum DropdownItemType { standard, header, subItem }

class DropdownItem<T> {
  final T value;
  final String child;
  final DropdownItemType dropdownItemType;
  final bool canSelect;

  const DropdownItem({
    required this.value,
    required this.child,
    this.canSelect = true,
    this.dropdownItemType = DropdownItemType.standard,
  });
}

class AppDropDown<T> extends StatelessWidget {
  final List<DropdownItem<T>> items;
  final void Function(T?)? onChanged;
  final String fieldDisplayName;
  final String? hint;
  final bool isExpanded;
  final bool showFieldNameAsHint;
  final bool isDense;
  final EdgeInsetsGeometry margin;
  final bool requiredInput;
  final bool disableCompulsoryLabel;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String? Function(T?)? validator;
  final Function(T?)? onSaved;
  final bool searchable;
  final bool? Function(T? prev, T? next)? onBeforeChange;

  final T? value;
  final bool readOnly;

  late final bool showTitle;

  GlobalKey<FormFieldState>? fieldKey;
  final FocusNode? focusNode;

  final String? customUnselectedItemName;
  final bool autoFocus;
  static const bool isSmallScreen = false;

  static TextStyle dropdownItemStandardTextStyle(final BuildContext context) =>
      Theme.of(context).dropdownMenuTheme.textStyle!;

  static TextStyle dropdownHeaderItemTextStyle(final BuildContext context) =>
      Theme.of(
        context,
      ).dropdownMenuTheme.textStyle!.copyWith(fontWeight: FontWeight.bold);

  AppDropDown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.fieldDisplayName,
    required this.requiredInput,
    this.disableCompulsoryLabel = false,
    this.onBeforeChange,
    this.value,
    this.hint,
    this.isExpanded = true,
    this.showFieldNameAsHint = false,
    this.searchable = false,
    this.isDense = true,
    this.margin = const EdgeInsets.only(bottom: 1.0),
    this.validator,
    this.onSaved,
    final bool? showTitle,
    this.readOnly = false,
    this.enabledBorder,
    this.focusedBorder,
    this.customUnselectedItemName,
    this.focusNode,
    this.autoFocus = false,
    this.fieldKey,
    // required this.itemAsString,
  }) {
    this.showTitle = showTitle ?? requiredInput;
    fieldKey ??= GlobalKey<FormFieldState>();
  }

  static EdgeInsets dropdownStandardPadding = EdgeInsets.symmetric(
    vertical: isSmallScreen ? 12 : 6,
    horizontal: 8,
  );
  static EdgeInsets dropdownSubsItemsPadding = const EdgeInsets.symmetric(
    vertical: 3,
    horizontal: 20,
  );
  static EdgeInsets dropdownGroupHeaderPadding = const EdgeInsets.symmetric(
    vertical: 6,
    horizontal: 8,
  );

  static Color groupedDropdownHeaderColor = AppColors.primaryColor;

  Widget listItem(final T? item, final BuildContext context) {
    EdgeInsets itemPadding = dropdownStandardPadding;
    TextStyle itemTextStyle = dropdownItemStandardTextStyle(context);
    switch (valueToItem[item]?.dropdownItemType) {
      case DropdownItemType.header:
        itemPadding = dropdownGroupHeaderPadding;
        itemTextStyle = dropdownHeaderItemTextStyle(context);
        break;
      case DropdownItemType.subItem:
        itemPadding = dropdownSubsItemsPadding;
        // itemTextStyle=dropdownSubsItemsPadding;
        break;
      case null:
      // TODO: Handle this case.
      case DropdownItemType.standard:
      // TODO: Handle this case.
    }
    return Padding(
      padding: itemPadding,
      child: Text(
        item == null ? 'Select $fieldDisplayName' : itemAsString(item),
        style: itemTextStyle,
      ),
    );
  }

  InputDecoration get searchFieldInputDecoration => InputDecoration(
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    hintText: 'Search $fieldDisplayName',
    prefixIcon: const Icon(Icons.search),
    hintStyle: const TextStyle(fontSize: 14),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 0.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.appMediumGrey, width: 0.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.appMediumGrey, width: 0.5),
    ),
  );

  BoxConstraints popUpDropdownListConstraints(final BuildContext context) =>
      BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2);

  String itemAsString(final T? item) {
    return valueToItem[item]!.child;
  }

  final searchController = TextEditingController();

  final Map<T?, DropdownItem<T>> valueToItem = {};

  final bool isOldDropdown = false;

  @override
  Widget build(final BuildContext context) {
    if (isOldDropdown) {
      final child = DropdownButtonFormField<T>(
        focusNode: focusNode,
        autofocus: autoFocus,
        key: fieldKey,
        isExpanded: isExpanded,
        decoration: InputDecoration(
          label: !showFieldNameAsHint
              ? (showTitle
                    ? ((requiredInput && !disableCompulsoryLabel)
                          ? CompulsoryText(fieldDisplayName)
                          : Text(fieldDisplayName))
                    : null)
              : null,
          hintText: hint ?? (showFieldNameAsHint ? fieldDisplayName : null),
          enabled: !readOnly,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          isDense: isDense,
        ),
        items: requiredInput
            ? items
                  .map(
                    (final e) => DropdownMenuItem(
                      value: e.value,
                      enabled: e.canSelect,
                      child: Text(
                        e.child,
                        style: e.dropdownItemType == DropdownItemType.header
                            ? dropdownHeaderItemTextStyle(context)
                            : dropdownItemStandardTextStyle(context),
                      ),
                    ),
                  )
                  .toList()
            : [
                DropdownMenuItem(
                  child: Text(
                    customUnselectedItemName ?? 'Select $fieldDisplayName',
                    style: Theme.of(
                      context,
                    ).dropdownMenuTheme.textStyle!.copyWith(fontSize: 14),
                  ),
                ),
                ...items.map(
                  (final e) => DropdownMenuItem(
                    value: e.value,
                    child: Text(
                      e.child,
                      style: e.dropdownItemType == DropdownItemType.header
                          ? dropdownHeaderItemTextStyle(context)
                          : dropdownItemStandardTextStyle(context),
                    ),
                  ),
                ),
              ],
        initialValue: value,
        onChanged: onChanged,
        validator: readOnly
            ? null
            : validator ??
                  (final value) {
                    if (requiredInput && value == null) {
                      return '$fieldDisplayName cannot be empty.';
                    }
                    return null;
                  },
        onSaved: onSaved,
        isDense: isDense,
      );
      if (readOnly) {
        return Disabled(child, color: AppColors.disabledGrey);
      }
      return Focus(
        child: child,
        onFocusChange: (final bool hasFocus) {
          if (!hasFocus) {
            fieldKey!.currentState?.validate();
          }
        },
      );
    }
    valueToItem.clear();
    valueToItem.addEntries(items.map((final e) => MapEntry(e.value, e)));
    final child = DropdownSearch<T?>(
      key: fieldKey,
      compareFn: (item1, item2) {
        return item1 == item2;
      },
      items: (filter, loadProps) {
        return [if (!requiredInput) null, ...items.map((final e) => e.value)];
      },
      itemAsString: (final item) {
        if (item == null) return 'Select $fieldDisplayName';
        return itemAsString(item as T);
      },
      popupProps: PopupProps.menu(
        showSearchBox: searchable,
        constraints: popUpDropdownListConstraints(context),
        fit: FlexFit.loose,
        itemBuilder: (context, item, isDisabled, isSelected) {
          return listItem(item, context);
        },
        disabledItemFn: (final item) {
          if (item == null) return false;
          return !valueToItem[item]!.canSelect;
        },
        emptyBuilder: (final context, final searchEntry) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('No Items Found!'),
          );
        },

        searchFieldProps: TextFieldProps(
          decoration: searchFieldInputDecoration,
          autofocus: true,
          controller: searchController,
          style: const TextStyle(fontSize: 14),
        ),
        containerBuilder: (final context, final popupWidget) {
          final pWidget = Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: popupWidget,
          );
          if (kIsWeb) return PointerInterceptor(child: pWidget);
          return pWidget;
        },
      ),
      onBeforeChange: onBeforeChange != null
          ? (final prevItem, final nextItem) async {
              return onBeforeChange!(prevItem, nextItem);
            }
          : null,
      decoratorProps: DropDownDecoratorProps(
        decoration: InputDecoration(
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          label: !showFieldNameAsHint
              ? ((requiredInput && !disableCompulsoryLabel)
                    ? CompulsoryText(fieldDisplayName)
                    : Text(fieldDisplayName))
              : null,
          hintText: showFieldNameAsHint ? fieldDisplayName : null,
          contentPadding: isDense
              ? const EdgeInsets.symmetric(vertical: 8)
              : null,
          isDense: isDense,
        ),
        baseStyle: const TextStyle(fontSize: 14),
      ),
      dropdownBuilder: (final context, final selectedValue) {
        if (selectedValue == null) {
          return Text('Select $fieldDisplayName');
        }
        return Text(itemAsString(selectedValue));
      },
      selectedItem: value,
      onChanged: onChanged,
      // onBeforeChange: onBeforeChange,
      enabled: true,
      validator: (final value) {
        if (requiredInput && value == null) {
          return 'Select $fieldDisplayName';
        }
        if (validator != null) {
          return validator!(value);
        }
        return null;
      },
      onSaved: onSaved,
    );
    if (readOnly) {
      return Disabled(child, color: AppColors.disabledGrey);
    }
    return Focus(
      child: child,
      onFocusChange: (final bool hasFocus) {
        if (!hasFocus) {
          fieldKey!.currentState?.validate();
        }
      },
    );
  }
}
