import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:shimmer/shimmer.dart';

class TechStackLoadingView extends StatelessWidget {
  const TechStackLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.primaryColorWithOpacity1,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        padding: EdgeInsets.symmetric(
          horizontal: context.isDesktop ? 120 : 24,
          vertical: 24,
        ),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildShimmerCategories(context),
              const SizedBox(height: 56),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerCategories(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.primaryColorWithOpacity1,
      highlightColor: context.primaryColor,
      child: Column(
        children: List.generate(
          4,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    4,
                    (index) => Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
