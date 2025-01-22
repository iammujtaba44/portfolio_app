part of 'resources.dart';

abstract class AppGradient {
  static ShaderMask shaderMask({required Widget child}) => ShaderMask(
        shaderCallback: (bounds) => gradient.createShader(bounds),
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
          Colors.transparent,
          Theme.of(context).colorScheme.primary.withOpacity(0.1),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );
}
