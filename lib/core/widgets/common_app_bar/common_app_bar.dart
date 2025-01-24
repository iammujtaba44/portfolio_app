// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/common_app_bar/common_app_bar_enum.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarPage selectedPage;
  final Function(int)? onPageSelected;
  final VoidCallback? onGetInTouchPressed;
  const CommonAppBar({
    super.key,
    required this.selectedPage,
    this.onPageSelected,
    this.onGetInTouchPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.backgroundColor,
      title: context.isMobile
          ? RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Mujtaba",
                      style: GoogleFonts.pacifico(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      )),
                  TextSpan(
                      text: '.dev',
                      style: GoogleFonts.pacifico(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          : null,
      actions: [
        if (context.isDesktop)
          const SizedBox(width: 20)
        else
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          )
      ],
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: context.isDesktop
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Mujtaba",
                              style: GoogleFonts.pacifico(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                          TextSpan(
                              text: '.dev',
                              style: GoogleFonts.pacifico(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    Spacer(),
                    ...appBarPages.map((page) => _buildNavButton(context, page.title)),
                    // Spacer(),
                    // GradientButton(
                    //   text: 'GET IN TOUCH',
                    //   onPressed: () => onGetInTouchPressed?.call(),
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: context.isDesktop ? 24 : 16,
                    //     vertical: context.isDesktop ? 10 : 8,
                    //   ),
                    // ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String text) {
    final bool isSelected = selectedPage.title == text;
    final int pageIndex = _getPageIndex(text);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isSelected ? context.primaryColor.withAlpha(100) : Colors.transparent,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        onPressed: () => onPageSelected?.call(pageIndex),
        child: Text(
          text,
          style: GoogleFonts.urbanist(
            color: isSelected ? context.primaryTextColor : context.secondaryColor,
            fontSize: context.isDesktop ? 18 : 14,
            letterSpacing: 1,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }

  int _getPageIndex(String text) {
    switch (text) {
      case 'Home':
        return 0;
      case 'Tech Stack':
        return 1;
      case 'Projects':
        return 2;
      case 'Contact Me':
        return 3;
      default:
        return 0;
    }
  }
}
