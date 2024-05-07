import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MyHomePage extends StatelessWidget {
  void _sendErrorToDynatrace() async {
    try {
      // Code that might throw an error
      throw Exception('Example error');
    } catch (error, stackTrace) {
      // Sending error to Dynatrace
      final dynatraceUrl = 'https://your-dynatrace-url.com/api/v2/ingest';
      final apiToken = 'your-api-token';
      final appId = 'your-app-id';

      final headers = {
        'Authorization': 'Api-Token $apiToken',
        'Content-Type': 'application/json'
      };

      final errorData = {
        'appId': appId,
        'error': error.toString(),
        'stackTrace': stackTrace.toString(),
      };

      final response = await http.post(
        Uri.parse(dynatraceUrl),
        headers: headers,
        body: jsonEncode(errorData),
      );

      if (response.statusCode == 200) {
        print('Error sent to Dynatrace successfully');
      } else {
        print('Failed to send error to Dynatrace: ${response.statusCode}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _sendErrorToDynatrace,
          child: Text('Simulate Error'),
        ),
      ),
    );
  }
}
