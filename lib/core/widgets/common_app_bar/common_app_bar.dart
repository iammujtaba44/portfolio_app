// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/common_app_bar/common_app_bar_enum.dart';
import 'package:portfolio_app/resources/resources.dart';

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
      title: context.isMobile ? _CommonAppBarHeaderTextView(onPageSelected: onPageSelected) : null,
      actions: [if (context.isDesktop) const SizedBox(width: 20)],
      automaticallyImplyLeading: false,
      leading: _buildLeading(context),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: context.isDesktop
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _CommonAppBarHeaderTextView(onPageSelected: onPageSelected),
                    Spacer(),
                    ...appBarPages.map((page) => _buildNavButton(context, page)),
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, AppBarPage page) {
    final bool isSelected = selectedPage == page;
    final int pageIndex = appBarPages.indexOf(page);

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
          page.title,
          style: GoogleFonts.urbanist(
            color: isSelected ? context.primaryTextColor : context.secondaryColor,
            fontSize: context.isDesktop ? 14 : 14,
            letterSpacing: 1,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget? _buildLeading(BuildContext context) => context.isMobile
      ? PopupMenuButton<int>(
          icon: Image.asset(
            'assets/icons/menu.png',
            width: 32,
            height: 32,
            color: context.primaryTextColor,
          ),
          offset: const Offset(0, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
          position: PopupMenuPosition.under,
          itemBuilder: (context) => appBarPages
              .asMap()
              .entries
              .map(
                (entry) => PopupMenuItem<int>(
                  value: entry.key,
                  onTap: () => onPageSelected?.call(entry.key),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:
                          selectedPage == entry.value ? context.primaryColor : Colors.transparent,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          entry.value.title,
                          style: GoogleFonts.urbanist(
                            color: selectedPage == entry.value
                                ? context.primaryTextColor
                                : context.secondaryColor,
                            fontSize: 14,
                            letterSpacing: 0.5,
                            fontWeight:
                                selectedPage == entry.value ? FontWeight.w600 : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        )
      : null;
}

class _CommonAppBarHeaderTextView extends StatelessWidget {
  const _CommonAppBarHeaderTextView({required this.onPageSelected});

  final Function(int p1)? onPageSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPageSelected?.call(0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: "Mujtaba",
                style: GoogleFonts.pacifico(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: context.primaryTextColor,
                )),
            TextSpan(
                text: '.cc',
                style: GoogleFonts.pacifico(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: context.primaryTextColor,
                )),
          ],
        ),
      ),
    );
  }
}
