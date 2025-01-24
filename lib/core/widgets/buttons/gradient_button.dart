part of '../widgets.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;

  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return AppGradient.shaderMask(
      color: AppGradient.lightTealGradient,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal.shade100,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: context.reversePrimaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
