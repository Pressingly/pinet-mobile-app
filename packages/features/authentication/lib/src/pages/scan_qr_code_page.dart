import 'package:authentication/src/authentication_route_module.gm.dart';
import 'package:authentication/src/views/scan_qr_code_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class ScanQRCodePage extends StatelessWidget {
  const ScanQRCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
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
              onTap: () => context.router.push(
                const VerifyCodeRoute(),
              ),
              child: Text(
                'Hold the code inside the frame, it will\nbe scanned automatically',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Gap(64),
          const SizedBox(
            width: 280,
            height: 280,
            child: ScanQRCodeView(),
          ),
        ],
      ),
    );
  }
}
