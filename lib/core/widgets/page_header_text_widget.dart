part of 'widgets.dart';

class PageHeaderTextWidget extends StatelessWidget {
  final String title;
  final String description;
  final CrossAxisAlignment? crossAxisAlignment;

  const PageHeaderTextWidget({
    super.key,
    required this.title,
    required this.description,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 400,
          child: Text(
            description,
            textAlign: crossAxisAlignment == CrossAxisAlignment.center
                ? TextAlign.center
                : TextAlign.start,
            style: GoogleFonts.poppins(
              color: context.descriptionColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
