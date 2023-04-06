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
      body: Container(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 1.5,
                maxHeight: MediaQuery.of(context).size.height * 7.0),
            child: InAppWebView(
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
          ),
        ),
      ),
    );
  }
}
