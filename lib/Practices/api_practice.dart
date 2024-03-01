import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPractice extends StatefulWidget {
  const ApiPractice({super.key});

  @override
  State<ApiPractice> createState() => _ApiPracticeState();
}

class _ApiPracticeState extends State<ApiPractice> {
  //
  var jsonData;
  Future<void> APICall() async {
    var response = await http.get(
      Uri.parse('https://randomuser.me/api/?results=2'),
    );
    var body = response.body;
    setState(() {
      jsonData = jsonDecode(body);
    });

    print(
      'jsonData: ====>>> ' + jsonData.toString(),
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Practice'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(jsonData.toString()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: APICall,
        child: Text('API Call'),
      ),
    );
  }
}
