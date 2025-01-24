part of 'widgets.dart';

class PageHeaderTextWidget extends StatelessWidget {
  final String title;
  final String? highlightTitle;
  final String description;
  final CrossAxisAlignment? crossAxisAlignment;

  const PageHeaderTextWidget({
    super.key,
    required this.title,
    this.highlightTitle,
    required this.description,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment:
              crossAxisAlignment != null ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                color: context.primaryColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 2,
                fontSize: context.isDesktop ? 60 : 30,
              ),
            ),
            if (highlightTitle != null) ...[
              Text(
                ' ${highlightTitle ?? ''}',
                style: GoogleFonts.poppins(
                  color: context.primaryTextColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  fontSize: context.isDesktop ? 60 : 30,
                ),
              ),
            ],
          ],
        ),
        AppDivider(
          desktopWidth: crossAxisAlignment != null ? 400 : 200,
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
