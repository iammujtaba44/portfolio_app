import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_app/core/routes/app_routes.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _scaleAnimations;
  late List<Animation<double>> _opacityAnimations;
  late List<Animation<Offset>> _slideAnimations;
  final List<String> _letters = ['L', 'O', 'A', 'D', 'I', 'N', 'G'];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    // Add listener for navigation
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.desktop);
      }
    });

    // Keep scale constant
    _scaleAnimations = List.generate(
      _letters.length,
      (index) => Tween<double>(begin: 1.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(0, 1),
        ),
      ),
    );

    // Modify opacity animations for final fade out
    _opacityAnimations = List.generate(
      _letters.length,
      (index) => TweenSequence([
        // Show letters
        TweenSequenceItem(
          tween: Tween<double>(begin: 1.0, end: 1.0),
          weight: 40,
        ),
        // Final fade out
        TweenSequenceItem(
          tween: Tween<double>(begin: 1.0, end: 0.0),
          weight: 60,
        ),
      ]).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            0.0 + (index * 0.08),
            1.0,
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );

    // Add slide animations
    _slideAnimations = List.generate(
      _letters.length,
      (index) => TweenSequence([
        TweenSequenceItem(
          tween: Tween<Offset>(
            begin: const Offset(0, 1.0), // Start from bottom
            end: const Offset(0, 0), // Move to original position
          ),
          weight: 40,
        ),
        TweenSequenceItem(
          tween: Tween<Offset>(
            begin: const Offset(0, 0),
            end: const Offset(0, 0),
          ),
          weight: 60,
        ),
      ]).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            0.0 + (index * 0.08),
            0.4 + (index * 0.08),
            curve: Curves.easeOut,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingAnimationWidget.flickr(
                leftDotColor: Colors.white54, rightDotColor: Colors.white54, size: 50),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 50,
              children: List.generate(
                _letters.length,
                (index) => AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Transform.translate(
                    offset: _slideAnimations[index].value *
                        50, // Multiply by 50 to increase slide distance
                    child: Transform.scale(
                      scale: _scaleAnimations[index].value,
                      child: Opacity(
                        opacity: _opacityAnimations[index].value,
                        child: Text(
                          _letters[index],
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              BoxShadow(
                                color: Colors.white54,
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
