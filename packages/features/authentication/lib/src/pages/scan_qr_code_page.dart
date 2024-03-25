import 'dart:io';

import 'package:authentication/src/authentication_route_module.gm.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

@RoutePage()
class ScanQRCodePage extends StatefulWidget {
  const ScanQRCodePage({super.key});

  @override
  State<ScanQRCodePage> createState() => _ScanQRCodePageState();
}

class _ScanQRCodePageState extends State<ScanQRCodePage> {
  final qrKey = GlobalKey(debugLabel: 'QR');

  late final QRViewController controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.scanQRCode),
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
              onTap: () async {
                await controller.pauseCamera();
                await context.router.push(
                  const VerifyCodeRoute(),
                );
                await controller.resumeCamera();
              },
              child: Text(
                context.l10n.scanQRCodeGuide,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Gap(64),
          SizedBox(
            width: 280,
            height: 280,
            child: QRView(
              onQRViewCreated: _onQRViewCreated,
              key: qrKey,
              overlay: QrScannerOverlayShape(
                borderColor: Theme.of(context).colorScheme.surfaceTint,
                borderRadius: 12,
                borderWidth: 12,
                borderLength: 24,
                overlayColor: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
