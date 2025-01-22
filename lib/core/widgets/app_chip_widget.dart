part of 'widgets.dart';

class AppChipWidget extends StatelessWidget {
  final String label;
  final dynamic icon;
  final void Function()? onTap;

  const AppChipWidget({super.key, required this.label, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildIcon(context),
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.w500,
                fontSize: 14,
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
        width: 20,
        height: 20,
        color: Theme.of(context).colorScheme.surface,
      );
    }
    return Icon(
      icon,
      size: 20,
      color: Theme.of(context).colorScheme.surface,
    );
  }
}
