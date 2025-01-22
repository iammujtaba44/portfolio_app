part of 'widgets.dart';

class AppChipWidget extends StatelessWidget {
  final String label;
  final dynamic icon;
  final void Function()? onTap;
  final bool isDense;

  const AppChipWidget({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
    this.isDense = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: isDense
            ? const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
            : const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: isDense ? 4 : 8,
          children: [
            _buildIcon(context),
            Text(
              label,
              style: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: isDense ? FontWeight.w600 : FontWeight.w500,
                fontSize: isDense ? 12 : 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    if (icon is String) {
      return Image.asset(
        icon,
        width: isDense ? 16 : 20,
        height: isDense ? 16 : 20,
        color: Theme.of(context).colorScheme.surface,
      );
    }
    return Icon(
      icon,
      size: isDense ? 16 : 20,
      color: Theme.of(context).colorScheme.surface,
    );
  }
}
