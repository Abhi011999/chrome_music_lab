import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Chrome Music Lab', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
        body: WebviewScaffold(
      url: "https://musiclab.chromeexperiments.com/Experiments",
      withJavascript: true,
      hidden: true,
      initialChild: Container(
        child: const Center(
          child: Text('Loading ...', textScaleFactor: 2),
        ),
      ),
    ));
  }
}
