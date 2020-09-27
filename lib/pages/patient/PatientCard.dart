import 'package:flutter/material.dart';

class PatientCard extends StatefulWidget {
  final List dataPatient;
  final int index;

  PatientCard({this.dataPatient, this.index});

  @override
  _PatientCardState createState() => _PatientCardState();
}

class _PatientCardState extends State<PatientCard> {
  @override
  Widget build(BuildContext context) {
    var string = widget.dataPatient[widget.index]["description"];
    var firstName = widget.dataPatient[widget.index]["first_name"];
    var lastName = widget.dataPatient[widget.index]["last_name"];

    if (string.length > 30) {
      string = string.substring(0, 30);
    }

    var namePrefix = "";
    (widget.dataPatient[widget.index]["gender"] == "Male")
        ? namePrefix = "Mr"
        : namePrefix = "Ms";

    return Card(
      margin: EdgeInsets.fromLTRB(10, 7, 10, 7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.blue[100],
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.26,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: CircleAvatar(
                  radius: 43.0,
                  backgroundColor: Colors.grey[200],
                  backgroundImage:
                      NetworkImage(widget.dataPatient[widget.index]["image"]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          child: Text(
                        namePrefix + " " + firstName + " " + lastName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        maxLines: 3,
                        overflow: TextOverflow.clip,
                        textDirection: TextDirection.ltr,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        string,
                        style: TextStyle(fontSize: 15),
                        maxLines: 25,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ), //
      ),
    );
  }
}
