import 'package:flutter/material.dart';

class TransRow extends StatelessWidget {
  final tr;

  TransRow(this.tr);

  @override
  Widget build(BuildContext context) {

      return Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(2, 2),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(tr['date']),
              Text(
                tr['montant'].toString(),
                style: TextStyle(
                  color: tr['debit'] ? Colors.red : Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );

  }

}