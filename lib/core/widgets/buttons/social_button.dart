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
    final foregroundColor =
        isPrimary ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.primary;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: label != null ? 24 : 16,
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
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
            Icon(icon, size: 20, color: foregroundColor),
          ],
          if (image != null) ...[
            Image.asset(
              image ?? '',
              width: 20,
              height: 20,
              color: foregroundColor,
            ),
          ],
        ],
      ),
    );
  }
}
