import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
  return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage message) {
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text(message.message)),
        );
      });
}

Widget LoadWebViewURL(String url, BuildContext context) {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  return WebView(
    initialUrl: url,
    javascriptMode: JavascriptMode.unrestricted,
    onWebViewCreated: (WebViewController webViewController) {
      _controller.complete(webViewController);
    },
    // TODO(iskakaushik): Remove this when collection literals makes it to stable.
    // ignore: prefer_collection_literals
    javascriptChannels: <JavascriptChannel>[
      _toasterJavascriptChannel(context),
    ].toSet(),
    onPageStarted: (String url) {
      print('Page started loading: $url');
    },
    onPageFinished: (String url) {
      print('Page finished loading: $url');
    },
  );
}
