import 'package:flutter/material.dart';
import 'package:m_lenden/screen/app_flow/SendMoney/SummeryRespose.dart';

class Summery extends StatefulWidget {
  @override
  _SummeryState createState() => _SummeryState();
}

class _SummeryState extends State<Summery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Summery'),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFFC0E8E6),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 52),
                    child: Column(
                      children: [
                        Text(
                          "5000 BDT",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF03807C),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "charge 50 BDT (0.4%)",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sender MFS'),
                  Text(
                    'Bkash',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 2,
                width: double.infinity,
                color: Color(0xFFE0EAFF),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Receiver MFS'),
                  Text(
                    'Nogod',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 2,
                width: double.infinity,
                color: Color(0xFFE0EAFF),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Receiver number '),
                  Text(
                    '01725 659 ***',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFC0E8E6),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Personal'),
                  ),
                ),
              ),
              Text(
                'Terms and Condition',style: TextStyle(color: Color(0xFF03807C)),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 26, bottom: 26),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF05A69B), Color(0xFF03807C)]),
                    shape: BoxShape.circle,
                  ),
                  child: FlatButton(
                    child: Center(
                      child: Image.asset(
                        'assets/Send.png',
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SummeryResponse(),
                              ),
                        );
                      })
                    },
                    textColor: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Tap And Hold The Button To Confirm Transaction',
                  style: TextStyle(color: Color(0xFF03807C)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
