import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final bool? obscureText;
  final String? Function(String?)? validator;

  const CustomTextFormField({
      super.key,
      this.label,
      this.hint,
      this.errorMessage,
      this.onChanged,
      this.validator,
      this.obscureText
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(
            color: colors.primary,
          ),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(
            color: Colors.red.shade800,
          ),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(
            color: Colors.red.shade800,
          ),
        ),
        isDense: true,
        label: label != null ? Text(label!) : null,
        hintText: hint,
        errorText: errorMessage,
        focusColor: colors.primary,
      ),
      obscureText: obscureText ?? false,
    );
  }
}
