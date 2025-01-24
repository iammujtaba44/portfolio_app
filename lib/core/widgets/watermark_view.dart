part of 'widgets.dart';

class WaterMarkView extends StatelessWidget {
  const WaterMarkView({super.key, required this.watermark, this.isFilled = true});
  final String watermark;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return isFilled
        ? Positioned.fill(child: _buildWatermark(context))
        : Positioned(child: _buildWatermark(context));
  }

  Widget _buildWatermark(BuildContext context) {
    return Center(
      child: Text(
        watermark,
        style: GoogleFonts.urbanist(
          fontSize: context.isDesktop ? 200 : 80,
          fontWeight: FontWeight.w900,
          color: context.primaryColorWithOpacity1,
        ),
      ),
    );
  }
}
