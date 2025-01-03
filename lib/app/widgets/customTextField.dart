import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    this.title,
    this.allowCopy = false,
    this.inputFormatters,
    this.keyboardType,
    this.prefixText,
    this.controller,
    this.readOnly = false,
    this.border,
    this.ignorePadding = false,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.textCapitalization,
    this.enableAutoResize = false,
    this.maxLinesAfterResizeStart,
    this.onChanged,
    this.closeControllerAutomatically = true,
    this.forcedMinLines,
    this.errorText,
    this.noConstraints = false,
    this.maxLength,
    this.helperText,
    this.fillColor,
    this.focusNode,
    this.suffix,
    this.onFieldSubmitted,
    this.validator,
    this.initialValue,
    this.focusBorder,
    this.enabledBorder,
    this.disabledBorder,
    this.hasInfoBubble,
    this.contentPadding,
    this.autoFocus = false,
    this.autoValidateMode,
    this.onTapOutside,
    this.hintStyle,
    this.errorStyle,
    this.obscureText,
    this.onEditingCompleted,
    this.textInputAction,
    this.style,
    this.onTap,
    this.isDropDown = false,
    this.selectedValue,
    this.selectedItem,
    this.onChange,
    this.isShowTitle = true,
    this.padding,
    this.borderColoe,
  });

  final String? title;
  final String? initialValue;
  final String? hintText;
  final bool allowCopy;
  final List<TextInputFormatter>? inputFormatters;
  final String? prefixText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool readOnly;
  final bool ignorePadding;
  final InputBorder? border;
  final InputBorder? focusBorder;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final TextCapitalization? textCapitalization;
  final bool enableAutoResize;
  final int? maxLinesAfterResizeStart;
  final ValueChanged<String>? onChanged;
  final bool closeControllerAutomatically;
  final int? forcedMinLines;
  final String? errorText;
  final bool noConstraints;
  final int? maxLength;
  final String? helperText;
  final Color? fillColor;
  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;
  final String? Function(String?)? validator;
  final bool? hasInfoBubble;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextStyle? style;
  final EdgeInsets? contentPadding;
  final bool autoFocus;
  final AutovalidateMode? autoValidateMode;
  final bool? obscureText;
  final void Function(PointerDownEvent)? onTapOutside;
  final VoidCallback? onEditingCompleted;
  final TextInputAction? textInputAction;
  final void Function()? onTap;
  final bool? isDropDown;
  final bool? isShowTitle;
  String? selectedValue;
  final List<String>? selectedItem;
  final void Function(String?)? onChange;
  final EdgeInsets? padding;
  final Color? borderColoe;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (widget.isShowTitle ?? false)
            ? Text(
                widget.title ?? '',
                style: context.textTheme.bodySmall?.copyWith(
                  color: ColorsValue.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox.shrink(),
        (widget.isShowTitle ?? false) ? Dimens.boxHeight4 : Dimens.boxHeight0,
        Padding(
          padding: widget.padding ?? EdgeInsets.zero,
          child: TextFormField(
            onTap: widget.onTap,
            style: widget.style ?? Styles.blackBold12,
            cursorColor: ColorsValue.blueColor,
            onTapOutside: widget.onTapOutside,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            onEditingComplete: widget.onEditingCompleted,
            controller: widget.controller,
            initialValue: widget.initialValue,
            maxLength: widget.maxLength,
            focusNode: widget.focusNode,
            autofocus: widget.autoFocus,
            obscureText: widget.obscureText ?? false,
            autovalidateMode:
                widget.autoValidateMode ?? AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              suffix: widget.suffix,
              suffixIcon: widget.suffixIcon,
              contentPadding: widget.contentPadding ?? Dimens.edgeInsets15,
              fillColor: widget.fillColor,
              filled: widget.fillColor != null,
              hintText: widget.hintText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              helperText: widget.helperText,
              focusedBorder: widget.focusBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide:
                        const BorderSide(color: ColorsValue.greyColor9195A8),
                  ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide:
                    const BorderSide(color: ColorsValue.greyColor9195A8),
              ),
              enabledBorder: widget.enabledBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide:
                        const BorderSide(color: ColorsValue.greyColor9195A8),
                  ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide:
                    const BorderSide(color: ColorsValue.greyColor9195A8),
              ),
              disabledBorder: widget.disabledBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide:
                        const BorderSide(color: ColorsValue.greyColorEEEE),
                  ),
              hintStyle: widget.hintStyle ??
                  Styles.black12.copyWith(color: ColorsValue.greyColor),
              prefixText: widget.prefixText,
              border: widget.border ?? const OutlineInputBorder(),
              errorText: (widget.errorText != null && widget.errorText != '')
                  ? widget.errorText
                  : null,
              prefixIcon: widget.prefixIcon,
              errorStyle: widget.errorStyle ??
                  Styles.black12.copyWith(color: Colors.red),
            ),
            textInputAction:
                widget.textInputAction ?? TextInputAction.unspecified,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.none,
            readOnly: widget.readOnly,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            minLines: widget.forcedMinLines ?? 1,
            maxLines: widget.maxLinesAfterResizeStart ?? 1,
            validator: widget.validator,
          ),
        ),
      ],
    );
  }
}

// class AdDWithdrawalScreen extends StatefulWidget {
//   const AdDWithdrawalScreen({super.key});
//
//   @override
//   State<AdDWithdrawalScreen> createState() => _AdDWithdrawalScreenState();
// }
//
// class _AdDWithdrawalScreenState extends State<AdDWithdrawalScreen> {
//   TextEditingController startDateController = TextEditingController();
//   TextEditingController endDateController = TextEditingController();
//   int selectedIndex = 0;
//
//   int groupValue = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               datePicker(
//                 title: StringContains.start_date,
//                 controller: startDateController,
//                 validation: StringContains.date_can_be_empty,
//               ),
//               CustomTextFormField(
//                 title: 'start_date',
//                 controller: endDateController,
//                 validator: (value) => 'date_can_be_empty',
//               ),
//               const SizedBox(
//                 height: 100,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(22),
//                 ),
//                 child: ListView.builder(
//                   itemCount: 3,
//                   shrinkWrap: true,
//                   itemBuilder: (context, index) => ListTile(
//                     tileColor: index == selectedIndex ? Colors.red : null,
//                     selectedTileColor:
//                         index == selectedIndex ? Colors.red : null,
//                     selectedColor: index == selectedIndex ? Colors.red : null,
//                     onTap: () {
//                       selectedIndex = index;
//                       setState(() {});
//                     },
//                     title: const Center(
//                       child: Text("data"),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 100,
//               ),
//               Container(
//                 child: Column(
//                   children: [
//                     exporter(
//                       () {},
//                       'title',
//                       const Icon(Icons.import_contacts_outlined),
//                     ),
//                     exporter(
//                       () {},
//                       'title',
//                       const Icon(Icons.import_contacts_outlined),
//                     ),
//                     exporter(
//                       () {},
//                       'title',
//                       const Icon(Icons.import_contacts_outlined),
//                     ),
//                     exporter(
//                       () {},
//                       'title',
//                       const Icon(Icons.import_contacts_outlined),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 child: Column(
//                   children: [
//                     const Text("Check any Data"),
//                     RadioListTile<int>(
//                       value: 1,
//                       groupValue: groupValue,
//                       title: const Text("Title 1"),
//                       onChanged: (value) {
//                         groupValue = value ?? 0;
//                         setState(() {});
//                       },
//                     ),
//                     RadioListTile<int>(
//                         value: 2,
//                         groupValue: groupValue,
//                         title: const Text("Title 2"),
//                         onChanged: (value) {
//                           groupValue = value ?? 0;
//                           setState(() {});
//                         }),
//                     RadioListTile<int>(
//                         value: 3,
//                         groupValue: groupValue,
//                         title: const Text("Title 3"),
//                         onChanged: (value) {
//                           groupValue = value ?? 0;
//                           setState(() {});
//                         }),
//                     CustomButton(
//                         title: "Save",
//                         onTap: () {
//                           print(groupValue);
//                         })
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget exporter(final VoidCallback? onTap, String title, Widget icons) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: ListTile(
//         onTap: onTap,
//         title: Text(title ?? "Data"),
//         leading: icons ?? const Icon(Icons.import_contacts),
//       ),
//     );
//   }
//
//   DateTime date = DateTime.now();
//
//   Widget datePicker({
//     required String title,
//     required TextEditingController controller,
//     required String validation,
//   }) {
//     return CustomTextFormField(
//       title: title,
//       contentPadding: p10,
//       readOnly: true,
//       controller: controller,
//       hintText: StringContains.date_hint_text,
//       onTap: () async {
//         final selectedDate = await showDatePicker(
//           context: context,
//           initialDate: date,
//           firstDate: DateTime(2000),
//           lastDate: DateTime(2080),
//         );
//         if (selectedDate != null) {
//           setState(() {
//             date = selectedDate;
//             controller.text = date.toString().offerDateFormat;
//           });
//         }
//       },
//       suffixIcon: const Icon(Icons.calendar_month_outlined),
//       style: context.blueText,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return validation;
//         }
//       },
//     );
//   }
// }
