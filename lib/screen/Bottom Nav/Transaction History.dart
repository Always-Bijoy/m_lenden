import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: screenHeight * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF03807C),
                          const Color(0xFF05A69B),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 40),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
