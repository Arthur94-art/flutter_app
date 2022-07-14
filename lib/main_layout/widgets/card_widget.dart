import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String textData;
  const CardWidget({Key? key, required this.textData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      child: Card(
        color: Colors.indigo[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                child: Text(
                  textData.length > 0 ? textData : 'b',
                ),
                padding: const EdgeInsets.all(15),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () => print('pressed'),
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () => print('pressed'),
                    icon: Icon(
                      Icons.done_all_rounded,
                      color: Colors.green[700],
                    )),
                IconButton(
                    onPressed: () => print('pressed'),
                    icon: Icon(
                      Icons.remove_circle,
                      color: Colors.red,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
