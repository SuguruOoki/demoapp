import 'package:flutter/material.dart';

class ItemAddPage extends StatefulWidget {
  @override
  _ItemAddPageState createState() => _ItemAddPageState();
}

class _ItemAddPageState extends State<ItemAddPage> {
  String itemTitle = '_ItemAddPageState';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Item'),
      ),
      body: Container(
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: TextField(
                maxLines: 1,
                decoration: const InputDecoration(
                  labelText: 'Input your new Item!',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String newItemTitle) {
                  setState(
                    () => {
                      itemTitle = newItemTitle,
                    },
                  );
                },
              ),
              width: double.infinity,
              margin: const EdgeInsets.all(1),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(1),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(itemTitle);
                },
                child: const Text(
                  'Add!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(1),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  'Abort!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
