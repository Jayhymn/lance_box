import 'package:flutter/material.dart';
import 'package:lance_box/app.dart';

class DefaultButton2 extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final Color labelColor;
  final bool outlineBorder;

  const DefaultButton2({
    super.key,
    required this.text,
    required this.isLoading,
    required this.onPressed,
    required this.buttonColor,
    required this.labelColor,
    this.outlineBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.dynamicScreenHeight(48),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color:
                  outlineBorder ? AppColors.primary : const Color(0xFF000000),
              width: outlineBorder ? 2 : 0
            ),
          ),
          backgroundColor: buttonColor,
        ),
        onPressed: isLoading ? null : onPressed, // Disable button if loading
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: AppColors.white,
                      strokeWidth: 2.5,
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Spacing between the progress bar and text
                  Text(
                    text,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: labelColor,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: context.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600, color: labelColor),
              ),
      ),
    );
  }
}
