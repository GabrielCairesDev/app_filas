import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class ApiService {
  Future<void> fetchData() async {
    WidgetsFlutterBinding.ensureInitialized();
    const keyApplicationId = 'xrIfq2R4osgDCQouGOPYvGAkV9W8NrCCkb29LLjf';
    const keyClientKey = 'tW2wtrOXyBAx5wAR4O67bvhi4CJGxJwBtADJOLdA';
    const keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(keyApplicationId, keyParseServerUrl, clientKey: keyClientKey, autoSendSessionId: true);

    var firstObject = ParseObject('FirstClass')..set('message', 'Hey ! First message from Flutter. Parse is now connected');
    await firstObject.save();

    print('Api Carregada!');
  }
}
