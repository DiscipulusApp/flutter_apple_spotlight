import 'package:flutter/material.dart';

import 'package:flutter_apple_spotlight/flutter_apple_spotlight.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Index Spotlight Test'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: idController,
              ),
              TextField(
                controller: nameController,
              ),
              FilledButton.tonal(
                onPressed: () async {
                  await CoreSpotlight.instance.indexSearchableItems([
                    CoreSpotlightItem(
                      domainIdentifier: "dev.harrydekat.coreSpotlightPlugin",
                      uniqueIdentifier: idController.text,
                      attributeSet: CoreSpotlightItemAttributeSet(
                        UTType.plainText,
                        title: nameController.text,
                        contentDescription:
                            "This is an item that was generated on ${DateTime.now().toIso8601String()}",
                      ),
                    ),
                  ]);
                },
                child: const Text("Index / Update entry"),
              ),
              FilledButton.tonal(
                onPressed: () async {
                  await CoreSpotlight.instance.deleteAll(
                    identifier: [idController.text],
                  );
                },
                child: const Text("Remove entry"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
