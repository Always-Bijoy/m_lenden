import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_lenden/screen/app_flow/SendMoney/Summery.dart';

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  String dropdownValue = 'bKash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // circular shape
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF05A69B), Color(0xFF03807C)]),
          ),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Summery(),
            ),
          );
        },
      ),
      appBar: AppBar(title: Text('Send Money')),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sender MFS'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF038D86),
                        ),
                        color: Color.fromRGBO(189, 255, 251, 0.5), //038D86
                        borderRadius: BorderRadius.circular(10)),
                    // dropdown below..
                    child: DropdownButton<String>(
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 42,
                        underline: SizedBox(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['bKash', 'Rocket', 'Nagad', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Sender MFS'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF038D86),
                        ),
                        color: Color.fromRGBO(189, 255, 251, 0.5), //038D86
                        borderRadius: BorderRadius.circular(10)),
                    // dropdown below..
                    child: DropdownButton<String>(
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 42,
                        underline: SizedBox(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['bKash', 'Rocket', 'Nagad', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                        value: 'P',
                        // groupValue: provider.selectedPurpose,
                        onChanged: (purposeValue) {
                          // provider.purposeSelectedValue(purposeValue);
                          // provider.purposeType(purposeValue);
                        },
                      ),
                      Text(
                        "Personal",
                      ),
                      Radio(
                        value: 'O',
                        // groupValue: provider.selectedPurpose,
                        onChanged: (purposeValue) {
                          // provider.purposeSelectedValue(purposeValue);
                          // provider.purposeType(purposeValue);
                        },
                      ),
                      Text(
                        "Agent",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Receiver Phone Number'),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(
                          color: Color(0xFF038D86),
                        ),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Number',
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Amount'),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(189, 255, 251, 0.5),
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(
                          color: Color(0xFF038D86),
                        ),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Amount',
                    ),
                  ),
                  /* Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 26, bottom: 26),
                      width: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFF05A69B), Color(0xFF03807C)]),
                        shape: BoxShape.circle,
                      ),
                      child: FlatButton(
                        child: Center(child: Icon(Icons.arrow_right_alt)),
                        onPressed: () => {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                // builder: (context) => OtpVerifiedCode(),
                              ),
                            );
                          })
                        },
                        textColor: Colors.white,
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
