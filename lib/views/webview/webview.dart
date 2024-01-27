import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/webview/controller/controller.dart';

class AppWebviewPage extends GetView<AppWebviewController> {
  const AppWebviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Obx(
        () => Scaffold(
          appBar: CustomAppBar(
            header: controller.title.value,
            leading: Container(
                constraints: const BoxConstraints(
                  minWidth: 50,
                ),
                child: const Icon(Icons.close_outlined).onTap(() {
                  Get.back();
                })),
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                color: context.customTheme?.card,
                alignment: Alignment.centerLeft,
                height: 5,
                child: UnconstrainedBox(
                  child: AnimatedSize(
                    duration: 50.milliseconds,
                    child: Container(
                        decoration: BoxDecoration(
                            color: context.customTheme?.active,
                            borderRadius: 3.radius),
                        height: 5,
                        width: context.mediaQuerySize.width *
                            0.01 *
                            controller.progress.value),
                  ),
                ),
              ),

              // LinearProgressIndicator(
              //   value: controller.progress.value,
              //   color: context.customTheme?.active,
              // ),
              Expanded(
                child: InAppWebView(
                    keepAlive: InAppWebViewKeepAlive(),
                    initialUrlRequest:
                        URLRequest(url: WebUri(controller.webUri)),
                    onProgressChanged: (webviewController, progress) {
                      LogUtil.w("progress $progress");
                      controller.progress.value =
                          double.parse(progress.toStringAsFixed(2));
                    },
                    onLoadStop: (webviewController, url) async {
                      final res = await webviewController.evaluateJavascript(
                          source: "document.title");
                      LogUtil.w("title === ");
                      controller.title.value = res;
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
