import 'package:f_js_interop/js_interop_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final jsIteropService = JsInteropService();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter JS Interop"),
        ),
        body: Center(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ElevatedButton(
                onPressed: () {
                  jsIteropService.showAlert("Hello, world!!!!");
                },
                child: const Text("Show Alert"),
              ),
              ElevatedButton(
                onPressed: () {
                  jsIteropService.requestFullScreen();
                },
                child: const Text("Full Screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  jsIteropService.getData();
                },
                child: const Text("Get Data"),
              ),
              ElevatedButton(
                onPressed: () {
                  jsIteropService.getJsonData();
                },
                child: const Text("Get JSON Data"),
              ),
              ElevatedButton(
                onPressed: () {
                  jsIteropService.getSomeAsyncData();
                },
                child: const Text("Get Async Data"),
              ),
              ElevatedButton(
                onPressed: () {
                  jsIteropService.shareImage("https://www.theyoungastronauts.com/images/logo.png", "ya.jpg");
                },
                child: const Text("Share Image"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
