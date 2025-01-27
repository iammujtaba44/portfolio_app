part of '../widgets.dart';

class UnderLineButton extends StatelessWidget {
  const UnderLineButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
  });
  final String title;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: color ?? context.primaryColor, width: 2),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.audiowide(
            fontSize: context.isDesktop ? 20 : 12,
            fontWeight: FontWeight.w500,
            color: color ?? context.primaryColor,
          ),
        ),
      ),
    );
  }
}
