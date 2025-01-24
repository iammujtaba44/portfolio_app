part of 'resources.dart';

abstract class AppGradient {
  static ShaderMask shaderMask({required Widget child, LinearGradient? color}) => ShaderMask(
        shaderCallback: (bounds) => color?.createShader(bounds) ?? gradient.createShader(bounds),
        child: child,
      );

  static LinearGradient get gradient => LinearGradient(
        colors: [
          Colors.purple[300]!,
          Colors.pink[300]!,
          Colors.orange[300]!,
        ],
      );

  static LinearGradient blackGradient(BuildContext context) => LinearGradient(
        colors: [
          Colors.black.withAlpha(20),
          Colors.black.withAlpha(20),
          Colors.black.withAlpha(20),
          Colors.white.withAlpha(10),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
  static LinearGradient get tealGradient => LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Colors.teal.shade900,
          Colors.teal.shade900,
          Colors.teal.shade700,
          Colors.teal.shade300,
          Colors.teal.shade100,
          Colors.teal.shade100,
        ],
      );

  static LinearGradient get lightTealGradient => LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.teal.shade100,
          Colors.teal.shade300,
          Colors.teal.shade500,
        ],
      );

  static LinearGradient get mixedGradient => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black.withAlpha(20),
          Colors.black.withAlpha(20),
          Colors.black.withAlpha(20),
          Colors.teal.shade900,
          Colors.teal.shade700,
          Colors.teal.shade500,
        ],
      );
}
