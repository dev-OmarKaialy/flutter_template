import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/context_extensions.dart';
import '../extensions/widget_extensions.dart';
import '../theme/app_theme.dart';

class MainTextField extends StatefulWidget {
  const MainTextField({
    super.key,
    this.hintTextStyle,
    this.borderColor,
    this.onChanged,
    this.prefixIcon,
    this.inputFormatter,
    this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.isPassword = false,
    this.enabled = true,
    this.autoFocus = false,
    this.error = false,
    this.smallSuffixIcon = false,
    this.borderRadius,
    this.maxLines = 1,
    this.hintColor,
    this.width,
    this.height,
    this.prefixText,
    this.label,
    this.fillColor,
    this.hint,
    this.onSubmitted,
    this.controller,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.contentPadding,
    this.textAlign = TextAlign.start,
    this.hasDropDown = false,
    this.hintSize,
    this.fontSize,
    this.readOnly = false,
    this.text,
    this.textDirection,
    this.hasPoint = false,
    this.code,
    this.countryCode,
    this.focusNode,
  });

  final ValueNotifier<String>? code;
  final ValueNotifier<String>? countryCode;
  final bool? hasDropDown;
  final String? text;
  final FocusNode? focusNode;
  final TextInputFormatter? inputFormatter;
  final TextInputAction textInputAction;
  final Color? borderColor;
  final Function(String)? onSubmitted;
  final double? width;
  final double? height;
  final String? hint;
  final TextDirection? textDirection;
  final Color? hintColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool enabled, readOnly;
  final bool autoFocus;
  final bool smallSuffixIcon;
  final bool error;
  final int? maxLines;
  final BorderRadius? borderRadius;
  final Color? fillColor;
  final Function(String)? onChanged;
  final String? label;
  final String? prefixText;
  final AutovalidateMode? autovalidateMode;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;
  final TextStyle? hintTextStyle;
  final double? hintSize;
  final double? fontSize;
  final bool hasPoint;

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> with WidgetsBindingObserver {
  final ValueNotifier<bool> _obscure = ValueNotifier(false);
  final ValueNotifier<TextDirection> _textDirection = ValueNotifier(TextDirection.rtl);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _obscure.value = widget.isPassword;

    // Detect direction from initial text if controller has value
    if (widget.controller?.text.isNotEmpty ?? false) {
      _textDirection.value = _detectDirection(widget.controller!.text);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  TextDirection _detectDirection(String text) {
    // Arabic Unicode range detection
    final arabicRegex = RegExp(r'[\u0600-\u06FF]');
    return arabicRegex.hasMatch(text) ? TextDirection.rtl : TextDirection.ltr;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.text != null)
          Text(
            widget.text!,
            style: context.textTheme.bodyLarge?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        if (widget.text != null) 2.verticalSpace,
        ValueListenableBuilder(
          valueListenable: _obscure,
          builder: (context, obscureValue, _) {
            return ValueListenableBuilder<TextDirection>(
              valueListenable: _textDirection,
              builder: (context, direction, _) {
                return TextFormField(
                  textDirection: widget.textDirection ?? direction,
                  focusNode: widget.focusNode,
                  onTapOutside: (s) => FocusScope.of(context).unfocus(),
                  style: context.textTheme.headlineLarge?.copyWith(
                    color: widget.enabled ? null : context.theme.hintColor.withOpacity(.7),
                    fontWeight: FontWeight.w400,
                    fontSize: widget.fontSize ?? 14,
                  ),
                  controller: widget.controller,
                  validator: widget.validator,
                  onFieldSubmitted: widget.onSubmitted,
                  textInputAction: widget.textInputAction,
                  cursorColor: context.primaryColor,
                  enabled: widget.enabled,
                  readOnly: widget.readOnly,
                  inputFormatters: widget.inputFormatter != null
                      ? [widget.inputFormatter!]
                      : widget.keyboardType == TextInputType.number
                      ? !widget.hasPoint
                            ? [FilteringTextInputFormatter.digitsOnly]
                            : [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))]
                      : null,
                  keyboardType: widget.isPassword
                      ? TextInputType.visiblePassword
                      : widget.keyboardType,
                  maxLines: widget.maxLines,
                  onChanged: (value) {
                    widget.onChanged?.call(value);
                    _textDirection.value = _detectDirection(value);
                  },
                  autofocus: widget.autoFocus,
                  obscureText: widget.isPassword && obscureValue,
                  enableSuggestions: !widget.isPassword,
                  autocorrect: !widget.isPassword,
                  autovalidateMode: widget.autovalidateMode,
                  textAlign: widget.textAlign,
                  onTap: () {
                    if (widget.controller != null && widget.controller!.text.isEmpty) {
                      final lastSelectionPosition = TextSelection.fromPosition(
                        TextPosition(offset: widget.controller!.text.length - 1),
                      );

                      final afterLastSelectionPosition = TextSelection.fromPosition(
                        TextPosition(offset: widget.controller!.text.length),
                      );

                      if (widget.controller!.selection == lastSelectionPosition) {
                        widget.controller!.selection = afterLastSelectionPosition;
                      }
                    }
                  },
                  obscuringCharacter: '*',
                  autofillHints: widget.isPassword
                      ? [AutofillHints.password]
                      : widget.keyboardType == TextInputType.emailAddress
                      ? [AutofillHints.email]
                      : widget.keyboardType == TextInputType.number
                      ? [AutofillHints.telephoneNumber]
                      : widget.keyboardType == TextInputType.name
                      ? [AutofillHints.username]
                      : null,
                  decoration: _buildInputDecoration(obscureValue, context),
                );
              },
            );
          },
        ),
      ],
    );
  }

  InputDecoration _buildInputDecoration(bool obscureValue, BuildContext context) {
    return InputDecoration(
      prefixText: widget.prefixText,
      contentPadding: widget.contentPadding,
      label: widget.label == null ? null : Text(widget.label!),
      filled: true,
      hintText: widget.hint,
      labelStyle:
          widget.hintTextStyle ??
          context.textTheme.titleMedium?.copyWith(
            color: context.theme.hintColor,
            fontWeight: FontWeight.bold,
          ),
      fillColor: widget.fillColor ?? context.theme.colorScheme.surface,
      focusColor: context.theme.primaryColor,
      hintStyle:
          widget.hintTextStyle ??
          context.textTheme.bodyMedium!.copyWith(
            color: context.theme.hintColor.withOpacity(.2),
            fontWeight: FontWeight.w400,
            fontSize: widget.hintSize ?? 12,
          ),
      enabledBorder: OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(AppTheme.radiusM),
        borderSide: BorderSide(
          color: widget.borderColor ?? Colors.grey.withOpacity(0.3),
          width: 1.0,
        ),
      ),
      errorStyle: context.textTheme.labelSmall?.copyWith(
        color: AppTheme.errorColor,
        fontWeight: FontWeight.w500,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(AppTheme.radiusM),
        borderSide: BorderSide(
          color: widget.error
              ? AppTheme.errorColor
              : widget.borderColor ?? Colors.grey.withOpacity(0.3),
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(AppTheme.radiusM),
        borderSide: BorderSide(color: widget.borderColor ?? AppTheme.primaryColor, width: 2.0),
      ),
      constraints: BoxConstraints(
        maxHeight: widget.height ?? double.infinity,
        maxWidth: widget.width ?? double.infinity,
      ),
      border: OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(AppTheme.radiusM),
        borderSide: BorderSide(
          color: widget.borderColor ?? Colors.grey.withOpacity(0.3),
          width: 1.0,
        ),
      ),
      prefixIcon: widget.prefixIcon,
      prefixIconConstraints: widget.smallSuffixIcon ? BoxConstraints(maxWidth: .15.sw) : null,
      suffixIcon: widget.isPassword
          ? (obscureValue ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off))
                .animate(key: UniqueKey())
                .animationSwitch()
                .onTap(() {
                  _obscure.value = !obscureValue;
                })
          : widget.suffixIcon,
      suffixIconConstraints: widget.smallSuffixIcon ? BoxConstraints(maxWidth: .15.sw) : null,
    );
  }
}
