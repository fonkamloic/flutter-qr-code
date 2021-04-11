import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class QRCodeScreen extends HookWidget {
  CountdownController countdownController;
  Map<String, Object> seed = Map();
  SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final refresh = useState(false);
    return Scaffold(
        appBar: AppBar(
          title: Text('QrCode'),
        ),
        body: Container(
          child: Center(
            child: FutureBuilder<Map<String, Object>>(
                future: setSeed(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    Timer.periodic(Duration(seconds: 6), (timer) {
                      refresh.value = !refresh.value;
                    });
                    seed = snapshot.data;
                    final String cache = seed['seed'];
                    sharedPreferences.setString("cache", cache);

                    print("Data is ${snapshot.data['seed']}");
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        QrImage(
                          data: seed['seed'],
                          version: QrVersions.auto,
                          // embeddedImage: AssetImage(),
                          size: size.width * 0.57,
                          embeddedImageStyle: QrEmbeddedImageStyle(
                            size: Size(size.width * 0.08, size.width * 0.08),
                          ),
                        ),
                        Countdown(
                            countdownController: countdownController,
                            builder: (context, time) {
                              return Text("${time.inSeconds}s");
                            }),
                        // Text('${timer.value}
                      ],
                    );
                  } else if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasError) {
                    Timer.periodic(Duration(seconds: 6), (timer) {
                      refresh.value = !refresh.value;
                    });
                    seed = snapshot.data;
                    final String cache = sharedPreferences
                        .getString("cache" ?? "No data was cached");

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        QrImage(
                          data: cache,
                          version: QrVersions.auto,
                          // embeddedImage: AssetImage(),
                          size: size.width * 0.57,
                          embeddedImageStyle: QrEmbeddedImageStyle(
                            size: Size(size.width * 0.08, size.width * 0.08),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Not Internet: Cached Data',
                          style: TextStyle(color: Colors.redAccent),
                        ),
                        // Text('${timer.value}
                      ],
                    );
                  }
                  return Container();
                }),
          ),
        ));
  }

  Future<Map<String, Object>> getSeed() async {
    const String url =
        'https://fq741r6kaj.execute-api.us-east-2.amazonaws.com/generate/seed';
    try {
      final http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        Map<String, Object> decodeMap = json.decode(response.body);
        print(decodeMap);
        return Future.value(decodeMap);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<Map<String, Object>> setSeed() async {
    sharedPreferences = await SharedPreferences.getInstance();
    seed = await getSeed();
    countdownController = CountdownController(
        duration: Duration(
            seconds:
                DateTime.fromMillisecondsSinceEpoch(seed["expires_at"] as int)
                    .difference(DateTime.now())
                    .inSeconds))
      ..start();

    return seed;
  }
}
