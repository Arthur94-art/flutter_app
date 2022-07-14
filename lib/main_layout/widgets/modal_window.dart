import 'package:flutter/material.dart';
import 'package:flutter_app/main_layout/provider/model.dart';
import 'package:provider/provider.dart';

class ModalWindowWidget extends StatelessWidget {
  const ModalWindowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 3,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Add Your toDo Item',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Container(
                  child: TextField(
                    onChanged: (value) =>
                        context.read<Data>().changeValue(value),
                    autofocus: true,
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: ElevatedButton(
                          onPressed: () {
                            print(context.read<Data>().getInputValue);
                          },
                          child: const Text('Add')),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 4,
                        child: ElevatedButton(
                            onPressed: () => Data().navigateBack(context),
                            child: const Text('Cancle'))),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
