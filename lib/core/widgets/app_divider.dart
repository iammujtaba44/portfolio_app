part of 'widgets.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.desktopWidth = 200,
    this.mobileWidth = 80,
    this.thickness = 2,
    this.indent = 2,
    this.endIndent = 2,
    this.color,
  });

  final double desktopWidth;
  final double mobileWidth;
  final double thickness;
  final double indent;
  final double endIndent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.isDesktop ? desktopWidth : mobileWidth,
      child: Divider(
        color: color ?? context.primaryColor,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}
