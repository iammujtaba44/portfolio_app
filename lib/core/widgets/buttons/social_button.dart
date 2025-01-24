part of '../widgets.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? label;
  final IconData? icon;
  final String? image;
  final bool isPrimary;

  const SocialButton({
    super.key,
    required this.onPressed,
    this.label,
    this.icon,
    this.image,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        isPrimary ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.surface;
    final foregroundColor = isPrimary ? context.primaryTextColor : context.secondaryColor;

    // Calculate size based on desktop/mobile
    final double buttonSize = context.isDesktop ? 48 : 36;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: label != null
            ? EdgeInsets.symmetric(
                horizontal: 24,
                vertical: context.isDesktop ? 16 : 10,
              )
            : EdgeInsets.zero, // No padding for circular button
        minimumSize: label != null ? null : Size(buttonSize, buttonSize),
        fixedSize: label != null ? null : Size(buttonSize, buttonSize),
        shape: label != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: context.primaryColorWithOpacity1,
                  width: 1,
                ),
              )
            : CircleBorder(
                side: BorderSide(
                  color: context.primaryColorWithOpacity1,
                  width: 1,
                ),
              ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          if (label != null) ...[
            const SizedBox(width: 8),
            Text(label ?? ''),
          ],
          if (icon != null) ...[
            Icon(icon, size: context.isDesktop ? 20 : 16, color: foregroundColor),
          ],
          if (image != null) ...[
            Image.asset(
              image ?? '',
              width: context.isDesktop ? 20 : 16,
              height: context.isDesktop ? 20 : 16,
              color: foregroundColor,
            ),
          ],
        ],
      ),
    );
  }
}
