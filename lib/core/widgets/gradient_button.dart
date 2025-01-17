part of 'widgets.dart';

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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple[200],
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: context.titleLargeWithBlackAndBold,
        ),
      ),
    );
  }
}
