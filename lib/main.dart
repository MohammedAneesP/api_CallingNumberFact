import 'package:api_calling/apiFunc.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ApiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ApiScreen extends StatefulWidget {
  ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  dynamic varble = "not available";

  final typVal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: typVal,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                      keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                  onPressed: () async {
                    dynamic numb = typVal.text;
                    final oneRes = await numFactResp(num: numb);
                    setState(() {
                      varble =oneRes.text;
                    });
                  },
                  child: const Text("Click"),
                ),
                Text(varble),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
