import 'package:flutter/material.dart';

import 'dashboard/views/widgets/root.dart';
import 'env_config.dart';

void main() async {
  var configuredApp = const AppConfig(
    appName: 'Carter Dev',
    apiVersion: '0.0.1',
    env: Env.staging,
    apiRootUrl: '',
    color: Colors.green,
    child: Root(),
  );

  runApp(configuredApp);
}