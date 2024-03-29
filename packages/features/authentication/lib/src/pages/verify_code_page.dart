import 'package:authentication/authentication.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.verifyCode),
        centerTitle: true,
        leading: IconButton(
          onPressed: context.router.back,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          const Gap(64),
          Align(
            child: GestureDetector(
              onTap: () => context.router.replaceAll([
                const SetupAuthenticationMethodRoute(),
              ]),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: context.l10n.verifyCodeGuidePrefix,
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'United Airlines\nwebsite',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.surfaceTint,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          final url =
                              Uri.parse('https://unitedairlines.onrender.com');
                          await launchUrl(url);
                        },
                    ),
                    TextSpan(text: context.l10n.verifyCodeGuideSuffix),
                  ],
                ),
              ),
            ),
          ),
          const Gap(64),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 46,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [1, 2, 3, 4, 5, 6]
                  .map((e) => _numberWithUnderline(context, e))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _numberWithUnderline(BuildContext context, int number) {
    return SizedBox(
      width: 40,
      child: Column(
        children: [
          Text(
            number.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            indent: 0,
            endIndent: 0,
            height: 4,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
