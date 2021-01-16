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

              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     height: 240,
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [
              //           const Color(0xFF03807C),
              //           const Color(0xFF05A69B),
              //         ],
              //       ),
              //     ),
              //     child: Stack(),
              //   ),
              // ),
              // Expanded(flex: 2, child: Column()),

          ),
        ),
      );
  }
}
