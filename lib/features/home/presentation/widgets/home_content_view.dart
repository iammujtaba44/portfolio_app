import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/resources/resources.dart';

class HomeContentView extends StatelessWidget {
  const HomeContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isDesktop ? _buildDesktopLayout(context) : _buildMobileLayout(context);
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: _buildIntroSection(context)),
        const SizedBox(width: 40),
        Expanded(child: _buildProfileImage()),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _buildProfileImage(),
        const SizedBox(height: 32),
        _buildIntroSection(context),
      ],
    );
  }

  Widget _buildIntroSection(BuildContext context) {
    final isDesktop = context.isDesktop;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello,',
          style: TextStyle(
            fontSize: isDesktop ? 64 : 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        AppGradient.shaderMask(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: isDesktop ? 64 : 40,
                color: Colors.white,
              ),
              children: const [
                TextSpan(text: "I'm "),
                TextSpan(text: 'Mujtaba,'),
              ],
            ),
          ),
        ),
        Text(
          'Senior Mobile Engineer\nbased in UAE.',
          style: TextStyle(
            fontSize: isDesktop ? 64 : 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'I am a Senior Mobile Engineer with experience of 6 years. In this 3 years i have worked so many big companies & startups',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 32),
        _buildActionButtons(isDesktop),
      ],
    );
  }

  Widget _buildActionButtons(bool isDesktop) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        GradientButton(
          text: 'GET IN TOUCH',
          onPressed: () {},
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 32 : 24,
            vertical: isDesktop ? 16 : 12,
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: isDesktop ? 32 : 24,
              vertical: isDesktop ? 16 : 12,
            ),
          ),
          onPressed: () {},
          child: const Text('VIEW ALL WORKS'),
        ),
      ],
    );
  }

  Widget _buildProfileImage() {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple[200]!,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text('Add your profile image here'),
      ),
    );
  }
}
