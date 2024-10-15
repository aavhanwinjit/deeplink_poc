import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DeepLinkService extends GetxController {
  DeepLinkService._privateConstructor();

  static final DeepLinkService _instance = DeepLinkService._privateConstructor();

  static DeepLinkService get instance => _instance;

  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void onInit() {
    super.onInit();
    _appLinks = AppLinks();
    initDeepLinks();
  }

  Future<void> initDeepLinks() async {
    _appLinks = AppLinks();
    // Check initial link if app was in cold state (terminated)

    final Uri? appLink = await _appLinks.getInitialLink();
    if (appLink != null) {
      // var uri = Uri.parse(appLink.toString());
      print(' here you can redirect from url as per your need \nDeeplink: $appLink');
    }

    // Handle link when app is in warm state (front or background)
    _linkSubscription = _appLinks.uriLinkStream.listen(
      (uriValue) {
        print(' you will listen any url updates ');
        print(' here you can redirect from url as per your need  \nDeeplink: $uriValue');
      },
      onError: (err) {
        debugPrint('====>>> error : $err');
      },
      onDone: () {
        _linkSubscription?.cancel();
      },
    );
  }
}
