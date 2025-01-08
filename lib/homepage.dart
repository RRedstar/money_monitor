import 'package:flutter/material.dart';
import 'trans_row.dart';

// Page d'accueuil
class HomePage extends StatelessWidget {
  final List transactions = [
    {
      'date': '05-01-2025',
      'montant': 1100000,
      'debit': false,
    },
    {
      'date': '05-01-2025',
      'montant': 200000,
      'debit': true,
    },
    {
      'date': '06-01-2025',
      'montant': 50000,
      'debit': true,
    },
    {
      'date': '07-01-2025',
      'montant': 20000,
      'debit': true,
    },
    {
      'date': '07-01-2025',
      'montant': 20000,
      'debit': true,
    },
    {
      'date': '07-01-2025',
      'montant': 20000,
      'debit': true,
    },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },
    // {
    //   'date': '07-01-2025',
    //   'montant': 20000,
    //   'debit': true,
    // },



  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Mon compte"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Compte principale

            Container(
              width: double.infinity,
              height: 100,
              padding:const EdgeInsets.all(15),
              margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
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
              child: const Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Icon(Icons.paid),
                  Positioned(
                    left: 40,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("YASMINE IDA"),
                      Text("500 000 Ar"),

                    ],
                  ),),

                  Positioned(
                    right: 10,
                    child: Icon(Icons.more_vert),
                  ),
                ],
              )
            ),

            const Text("Mes dernières opérations"),

            // Liste des transactions
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final tr = transactions[index];
                    return TransRow(tr);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {

  final String title = "Home";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
