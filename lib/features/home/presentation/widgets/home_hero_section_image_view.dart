import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/resources/resources.dart';

class HomeHeroSectionImageView extends StatefulWidget {
  const HomeHeroSectionImageView({super.key, this.isPositioned = false});
  final bool isPositioned;

  @override
  State<HomeHeroSectionImageView> createState() => _HomeHeroSectionImageViewState();
}

class _HomeHeroSectionImageViewState extends State<HomeHeroSectionImageView> {
  double tiltX = 0;
  double tiltY = 0;

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop && !widget.isPositioned) {
      return Expanded(
        flex: 1,
        child: imageContent,
      );
    } else {
      if (widget.isPositioned && !context.isDesktop) {
        return Positioned(
          top: 0,
          right: 10,
          child: imageContent,
        );
      }
      return const SizedBox.shrink();
    }
  }

  Widget get imageContent => MouseRegion(
        onHover: (event) {
          setState(() {
            // Convert cursor position to tilt angles
            tiltX = (event.localPosition.dy - 250) / 25;
            tiltY = -(event.localPosition.dx - 250) / 25;
          });
        },
        onExit: (event) {
          setState(() {
            tiltX = 0;
            tiltY = 0;
          });
        },
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(tiltX * (3.14159 / 180))
            ..rotateY(tiltY * (3.14159 / 180)),
          alignment: FractionalOffset.center,
          child: widget.isPositioned && !context.isDesktop
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: context.primaryColor.withAlpha(100),
                    gradient: AppGradient.tealGradient,
                  ),
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/profile/profile_main_2.png',
                      height: 250,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              : Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: context.primaryColor.withAlpha(100),
                    gradient: AppGradient.tealGradient,
                    image: DecorationImage(
                      image: AssetImage('assets/profile/profile_main_2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        ),
      );
}
