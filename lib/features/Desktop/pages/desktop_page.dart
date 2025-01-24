import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/common_app_bar/common_app_bar.dart';
import 'package:portfolio_app/core/widgets/common_app_bar/common_app_bar_enum.dart';
import 'package:portfolio_app/features/contact/presentation/pages/contact_page.dart';
import 'package:portfolio_app/features/experience/presentation/pages/experiences_page.dart';
import 'package:portfolio_app/features/home/presentation/pages/home_page.dart';
import 'package:portfolio_app/features/projects/presentation/pages/projects_page.dart';
import 'package:portfolio_app/features/tech_stack/presentation/pages/tech_stack_page.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  final ScrollController _scrollController = ScrollController();
  late List<GlobalKey> _keys;
  final int _pageCount = 5;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _keys = List.generate(_pageCount, (_) => GlobalKey());

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        selectedPage: appBarPages[_selectedPageIndex],
        onPageSelected: scrollToIndex,
        onGetInTouchPressed: () => scrollToIndex(appBarPages.length - 1),
      ),
      drawer: MobileDrawer(
        selectedPage: appBarPages[_selectedPageIndex],
        onPageSelected: scrollToIndex,
        onGetInTouchPressed: () => scrollToIndex(appBarPages.length - 1),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            ...List.generate(_pageCount, (page) => _pages(_keys[page])[page]),
            const CommonFooterView()
          ],
        ),
      ),
    );
  }

  void scrollToIndex(int index) {
    final context = _keys[index].currentContext;
    if (context != null) {
      setState(() {
        _selectedPageIndex = index;
      });
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _onScroll() {
    for (int i = 0; i < _keys.length; i++) {
      final context = _keys[i].currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);

        // Check if this section is visible in the viewport
        if (position.dy <= MediaQuery.of(context).padding.top + 100 && position.dy >= 0) {
          if (_selectedPageIndex != i) {
            setState(() {
              _selectedPageIndex = i;
            });
          }
          break;
        }
      }
    }
  }

  List<Widget> _pages(Key pageKey) => [
        HomePage(key: pageKey),
        TechStackPage(key: pageKey),
        ProjectsPage(key: pageKey),
        ExperiencesPage(key: pageKey),
        ContactPage(key: pageKey),
      ];
}

class CommonFooterView extends StatelessWidget {
  const CommonFooterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: context.surfaceColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Design & Developed by ',
              style: GoogleFonts.poppins(
                  fontSize: context.isDesktop ? 18 : 12, color: context.descriptionColor)),
          Text('Muhammad Mujtaba',
              style: GoogleFonts.poppins(
                  fontSize: context.isDesktop ? 18 : 12, color: context.primaryColor)),
        ],
      ),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  final Function(int) onPageSelected;
  final Function() onGetInTouchPressed;
  final AppBarPage selectedPage;

  const MobileDrawer({
    super.key,
    required this.onPageSelected,
    required this.onGetInTouchPressed,
    required this.selectedPage,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: context.surfaceColor,
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    // Add your profile image here
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Muhammad Mujtaba',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: context.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            ...appBarPages.asMap().entries.map(
                  (entry) => ListTile(
                    selected: selectedPage == entry.value,
                    selectedColor: context.primaryColor,
                    title: Text(
                      entry.value.name,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: selectedPage == entry.value
                            ? context.primaryColor
                            : context.descriptionColor,
                      ),
                    ),
                    onTap: () {
                      onPageSelected(entry.key);
                      Navigator.pop(context);
                    },
                  ),
                ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  onGetInTouchPressed();
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.primaryColor,
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: Text(
                  'Get in Touch',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
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
