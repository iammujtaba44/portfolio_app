part of 'widgets.dart';

class AppChipWidget extends StatefulWidget {
  final String label;
  final dynamic icon;
  final void Function()? onTap;
  final bool isDense;
  final Color? color;
  final bool isSquare;

  const AppChipWidget({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
    this.isDense = false,
    this.color,
    this.isSquare = false,
  });

  @override
  State<AppChipWidget> createState() => _AppChipWidgetState();
}

class _AppChipWidgetState extends State<AppChipWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: widget.isDense
              ? const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
              : const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: widget.color ?? context.primaryColor,
            borderRadius: widget.isSquare ? BorderRadius.circular(6) : BorderRadius.circular(20),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: context.primaryColor,
                      blurRadius: 8,
                      spreadRadius: -2,
                      offset: const Offset(0, 0),
                    ),
                  ]
                : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: widget.isDense ? 4 : 8,
            children: [
              _buildIcon(context),
              Text(
                widget.label,
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: widget.isDense ? FontWeight.w600 : FontWeight.w500,
                  fontSize: widget.isDense ? 12 : 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    if (widget.icon is String) {
      return Image.asset(
        widget.icon,
        width: widget.isDense ? 16 : 22,
        height: widget.isDense ? 16 : 22,
        color: Theme.of(context).colorScheme.surface,
      );
    }
    return Icon(
      widget.icon,
      size: widget.isDense ? 16 : 22,
      color: Theme.of(context).colorScheme.surface,
    );
  }
}
