part of 'widgets.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({super.key, this.isPrimary = true});
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    final socialAccounts = context.watch<HomeProvider>().socialAccounts;
    return Wrap(
      spacing: context.isDesktop ? 16 : 8,
      runSpacing: context.isDesktop ? 16 : 8,
      children: [
        ...socialAccounts.map(
          (e) => SocialButton(
            onPressed: () => Launcher.launch(e.url),
            image: e.image,
            isPrimary: isPrimary,
          ),
        ),
      ],
    );
  }
}
