// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:news_app/helper/custom_AppBar.dart';
import 'package:sizer/sizer.dart';

class WebViewUi extends StatefulWidget {
  final String? headUrl;
  const WebViewUi({super.key, this.headUrl});

  @override
  State<WebViewUi> createState() => _WebViewUiState();
}

class _WebViewUiState extends State<WebViewUi> {
  InAppWebViewController? webViewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: prefAppBar(context, 'News'),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(widget.headUrl!),
            ),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                mediaPlaybackRequiresUserGesture: false,
              ),
            ),
            androidOnPermissionRequest: (InAppWebViewController controller,
                String origin, List<String> resources) async {
              return PermissionRequestResponse(
                  resources: resources,
                  action: PermissionRequestResponseAction.GRANT);
            },
          ),
        ],
      ),
    );
  }
}
