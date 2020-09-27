import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';

import '../patient/PatientCard.dart';
import '../talk/SpeechScreen.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  List data;

  Future<String> getPatientData() async {
    var response = await DefaultAssetBundle.of(context)
        .loadString("public/sampledata/mock_data.json");
    setState(() => data = json.decode(response));
    return "Success!";
  }

  void initState() {
    super.initState();
    getPatientData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patients"),
        backgroundColor: Colors.blue,
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return PatientCard(dataPatient: data, index: index);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mic),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SpeechScreen()),
          );
        },
      ),
    );
  }
}
