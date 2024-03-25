import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PinCodeSetupPage extends StatelessWidget {
  PinCodeSetupPage({super.key});

  final focusNodes = List.filled(6, FocusNode());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.pinCodeSetup),
        centerTitle: true,
        leading: IconButton(
          onPressed: context.router.back,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(64),
            Align(
              child: Text(
                context.l10n.pinCodeSetupTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const Gap(32),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.filled(6, 0, growable: true).map((pos) {
                    return TextField(
                      // focusNode: focusNodes[pos],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        constraints: const BoxConstraints(
                          minHeight: 64,
                          minWidth: 48,
                          maxHeight: 64,
                          maxWidth: 48,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                      textInputAction:
                          pos < 5 ? TextInputAction.next : TextInputAction.done,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      buildCounter: (
                        context, {
                        required currentLength,
                        required isFocused,
                        required maxLength,
                      }) {
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          Focus.of(context).nextFocus();
                        }
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width - 64, 40),
              ),
              child: Text(context.l10n.submit),
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
