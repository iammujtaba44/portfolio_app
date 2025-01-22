part of 'widgets.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final socialAccounts = context.watch<HomeProvider>().socialAccounts;
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        ...socialAccounts.map(
          (e) => SocialButton(
            onPressed: () => Launcher.launch(e.url),
            image: e.image,
          ),
        ),
      ],
    );
  }
}
